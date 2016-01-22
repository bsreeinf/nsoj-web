# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160122160113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "admission_contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "college"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admission_forms", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "form_token"
    t.string   "first_name1"
    t.string   "last_name1"
    t.string   "middle_name1"
    t.string   "name_title1"
    t.string   "first_name2"
    t.string   "last_name2"
    t.string   "middle_name2"
    t.string   "name_title2"
    t.date     "dob"
    t.string   "gender"
    t.string   "country_of_permanent_residence"
    t.string   "country_of_birth"
    t.string   "nationality"
    t.string   "second_nationality"
    t.boolean  "visa_required"
    t.string   "addr_street1"
    t.string   "addr_city1"
    t.string   "addr_state1"
    t.string   "addr_pincode1"
    t.string   "addr_country1"
    t.string   "phone1"
    t.string   "addr_street2"
    t.string   "addr_city2"
    t.string   "addr_state2"
    t.string   "addr_pincode2"
    t.string   "addr_country2"
    t.string   "phone2"
    t.string   "email"
    t.date     "addr_since"
    t.date     "addr_until"
    t.string   "program_of_study"
    t.boolean  "currently_studying"
    t.string   "s_university"
    t.string   "s_subject"
    t.string   "s_degree"
    t.date     "s_date_started"
    t.date     "s_date_to_be_obtained"
    t.string   "s_expected_gpa"
    t.string   "r_university"
    t.string   "r_subject"
    t.string   "r_degree"
    t.date     "r_date_to_be_obtained"
    t.string   "r_expected_gpa"
    t.string   "a_degree1"
    t.string   "a_program1"
    t.string   "a_institution1"
    t.string   "a_department1"
    t.string   "a_country1"
    t.string   "a_degree2"
    t.string   "a_program2"
    t.string   "a_institution2"
    t.string   "a_department2"
    t.string   "a_country2"
    t.string   "a_degree3"
    t.string   "a_program3"
    t.string   "a_institution3"
    t.string   "a_department3"
    t.string   "a_country3"
    t.string   "a_degree4"
    t.string   "a_program4"
    t.string   "a_institution4"
    t.string   "a_department4"
    t.string   "a_country4"
    t.string   "a_degree5"
    t.string   "a_program5"
    t.string   "a_institution5"
    t.string   "a_department5"
    t.string   "a_country5"
    t.date     "eh_from_date1"
    t.date     "eh_to_date1"
    t.string   "eh_post_held1"
    t.string   "eh_employer_details1"
    t.date     "eh_from_date2"
    t.date     "eh_to_date2"
    t.string   "eh_post_held2"
    t.string   "eh_employer_details2"
    t.date     "eh_from_date3"
    t.date     "eh_to_date3"
    t.string   "eh_post_held3"
    t.string   "eh_employer_details3"
    t.string   "assessment_interested"
    t.string   "assessment_experience"
    t.boolean  "is_submitted"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "contact_subjects", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "city"
    t.string   "phone"
    t.string   "university"
    t.integer  "contact_subject_id"
    t.text     "message"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "contacts", ["contact_subject_id"], name: "index_contacts_on_contact_subject_id", using: :btree

  create_table "event_data", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "tag"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "event_data", ["event_id"], name: "index_event_data_on_event_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "nsoj_posts", force: :cascade do |t|
    t.string   "link"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "nsoj_radios", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nsoj_tv_categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nsoj_tvs", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.integer  "nsoj_tv_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "nsoj_tvs", ["nsoj_tv_category_id"], name: "index_nsoj_tvs_on_nsoj_tv_category_id", using: :btree

  create_table "slants", force: :cascade do |t|
    t.string   "college_name"
    t.string   "phone"
    t.string   "rb_name1"
    t.string   "rb_phone1"
    t.string   "rb_name2"
    t.string   "rb_phone2"
    t.string   "rb_name3"
    t.string   "rb_phone3"
    t.string   "rb_name4"
    t.string   "rb_phone4"
    t.string   "rb_name5"
    t.string   "rb_phone5"
    t.string   "rb_name6"
    t.string   "rb_phone6"
    t.string   "bn_name1"
    t.string   "bn_phone1"
    t.string   "bn_name2"
    t.string   "bn_phone2"
    t.string   "bn_name3"
    t.string   "bn_phone3"
    t.string   "bn_name4"
    t.string   "bn_phone4"
    t.string   "fc_name1"
    t.string   "fc_phone1"
    t.string   "fc_name2"
    t.string   "fc_phone2"
    t.string   "fc_name3"
    t.string   "fc_phone3"
    t.string   "tt_name1"
    t.string   "tt_phone1"
    t.string   "tt_phone2"
    t.string   "tt_phone3"
    t.string   "es_name"
    t.string   "es_phone"
    t.string   "pj_name"
    t.string   "pj_phone"
    t.string   "do_name"
    t.string   "do_phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "pincode"
    t.string   "state"
    t.string   "country"
    t.string   "password_digest"
    t.string   "activation_digest"
    t.string   "remember_digest"
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean  "activated",         default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_foreign_key "contacts", "contact_subjects"
  add_foreign_key "event_data", "events"
  add_foreign_key "nsoj_tvs", "nsoj_tv_categories"
end
