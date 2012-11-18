class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :displayname

  has_many :supplies
  has_many :needs, :through => :supply

  # attr_accessible :title, :body

  #has_one :role

  def self.find_for_facebook_oauth(auth, current_user = nil)
    # If the user is logged in but not with a provider
    if current_user and not current_user.provided?
      current_user.update_attributes(:provider => auth.provider,
                                     :uid => auth.uid)
    else
      user = User.where(:provider => auth.provider, :uid => auth.uid).first
      unless user
        user = User.new(displayname: auth.extra.raw_info.name,
                        email: auth.info.email,
                        password: Devise.friendly_token[0, 20])
        user.provider = auth.provider
        user.fb_token = auth.credentials.token
        user.uid = auth.uid
        user.has_local_password = false

        graph = Koala::Facebook::API.new(user.fb_token)
        graph.put_wall_post("Mi sono appena iscritto ad 'Aiutiamoci'! Unisciti a me, c'e' bisogno dell'aiuto di tutti!")

        user.save
      end
    end
    user
  end

  def admin?
    admin
  end

  def username
    email.split("@").first
  end
end
