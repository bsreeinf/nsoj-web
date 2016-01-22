class CreateSlants < ActiveRecord::Migration
  def change
    create_table :slants do |t|
      t.college_name :string
      t.phone :string

      t.rb_name1 :string
      t.rb_phone1 :string
      
      t.rb_name2 :string
      t.rb_phone2 :string
      
      t.rb_name3 :string
      t.rb_phone3 :string
      
      t.rb_name4 :string
      t.rb_phone4 :string
      
      t.rb_name5 :string
      t.rb_phone5 :string
      
      t.rb_name6 :string
      t.rb_phone6 :string


      t.bn_name1 :string
      t.bn_phone1 :string
      
      t.bn_name2 :string
      t.bn_phone2 :string
      
      t.bn_name3 :string
      t.bn_phone3 :string
      
      t.bn_name4 :string
      t.bn_phone4 :string
      
      
      t.fc_name1 :string
      t.fc_phone1 :string
      
      t.fc_name2 :string
      t.fc_phone2 :string
      
      t.fc_name3 :string
      t.fc_phone3 :string
      

      t.tt_name1 :string
      t.tt_phone1 :string

      t.tt_phone2 :string
      t.tt_phone3 :string
      

      t.es_name :string
      t.es_phone :string
      

      t.pj_name :string
      t.pj_phone :string
      

      t.do_name :string
      t.do_phone :string

      t.timestamps null: false
    end
  end
end
