class AddAccessCounterToStories < ActiveRecord::Migration
  def change
    add_column :stories, :access_counter, :integer, default: 0
  end
end
