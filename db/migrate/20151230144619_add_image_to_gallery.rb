class AddImageToGallery < ActiveRecord::Migration
  def self.up
    add_attachment :galleries, :image
  end

  def self.down
    remove_attachment :galleries, :image
  end
end
