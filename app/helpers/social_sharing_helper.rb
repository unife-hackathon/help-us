module SocialSharingHelper

  def share_activity(user, activity_type, text, link)

    #Facebook
    if user.provider.eql? "facebook" and activity_type #to check

      begin
        graph = Koala::Facebook::API.new(user.facebook_token)
        graph.put_wall_post(text, :link => link)
      rescue Koala::Facebook::APIError #=> e

      end
    end
  end

end
