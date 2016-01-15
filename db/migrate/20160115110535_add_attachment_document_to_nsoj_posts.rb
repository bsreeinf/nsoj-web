class AddAttachmentDocumentToNsojPosts < ActiveRecord::Migration
  def self.up
    change_table :nsoj_posts do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :nsoj_posts, :document
  end
end
