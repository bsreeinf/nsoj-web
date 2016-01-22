class CreateSlants < ActiveRecord::Migration
  def change
    create_table :slants do |t|
      t.string :college_name
      t.string :phone

      t.string :rb_name1
      t.string :rb_phone1
      
      t.string :rb_name2
      t.string :rb_phone2
      
      t.string :rb_name3
      t.string :rb_phone3
      
      t.string :rb_name4
      t.string :rb_phone4
      
      t.string :rb_name5
      t.string :rb_phone5
      
      t.string :rb_name6
      t.string :rb_phone6


      t.string :bn_name1
      t.string :bn_phone1
      
      t.string :bn_name2
      t.string :bn_phone2
      
      t.string :bn_name3
      t.string :bn_phone3
      
      t.string :bn_name4
      t.string :bn_phone4
      
      
      t.string :fc_name1
      t.string :fc_phone1
      
      t.string :fc_name2
      t.string :fc_phone2
      
      t.string :fc_name3
      t.string :fc_phone3
      

      t.string :tt_name1
      t.string :tt_phone1

      t.string :tt_phone2
      t.string :tt_phone3
      

      t.string :es_name
      t.string :es_phone
      

      t.string :pj_name
      t.string :pj_phone
      

      t.string :do_name
      t.string :do_phone

      t.timestamps null: false
    end
  end
end
