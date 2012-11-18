class AddAttachmentPhotoToAttachments < ActiveRecord::Migration
  def self.up
    change_table :attachments do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :attachments, :photo
  end
end
