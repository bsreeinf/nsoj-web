class CreateEventData < ActiveRecord::Migration
  def change
    create_table :event_data do |t|
      t.references :event, index: true, foreign_key: true
      t.string :tag
      t.attachment :image

      t.timestamps null: false
    end
  end
end
