class CreateHomeConfigs < ActiveRecord::Migration
  def change
    create_table :home_configs do |t|
      t.string :tag_ref
      t.string :tag_value

      t.timestamps null: false
    end
  end
end
