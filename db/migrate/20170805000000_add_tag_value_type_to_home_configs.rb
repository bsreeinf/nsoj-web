class AddTagValueTypeToHomeConfigs < ActiveRecord::Migration
  def change
    add_column :home_configs, :tag_value_type, :integer
  end
end
