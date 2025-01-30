# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2025_01_29_055709) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.integer "product_id", null: false
    t.text "message"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_articles_on_product_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "backends", force: :cascade do |t|
    t.string "phone1"
    t.string "phone2"
    t.string "phone3"
    t.text "address"
    t.string "email"
    t.text "about_rus"
    t.text "about_eng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "instagram"
    t.string "vk"
    t.string "telegram"
    t.string "whatsapp"
  end

  create_table "carousels", force: :cascade do |t|
    t.string "category_rus"
    t.string "category_eng"
    t.string "title_rus"
    t.string "title_eng"
    t.text "body_rus"
    t.text "body_eng"
    t.boolean "details"
    t.string "details_sizes"
    t.text "details_colors"
    t.text "details_more"
    t.string "details_buy_ozon"
    t.string "details_buy_wb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
    t.string "link_desc_rus"
    t.string "link_desc_eng"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name_rus"
    t.string "name_eng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "top"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "message"
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name_rus"
    t.string "name_eng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newarrivals", force: :cascade do |t|
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_newarrivals_on_product_id"
  end

  create_table "productcomments", force: :cascade do |t|
    t.string "message"
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_productcomments_on_product_id"
    t.index ["user_id"], name: "index_productcomments_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name_rus"
    t.string "name_eng"
    t.text "description_rus"
    t.text "description_eng"
    t.string "ozon"
    t.string "wb"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "top"
    t.integer "country_id"
    t.string "sizes"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["country_id"], name: "index_products_on_country_id"
  end

  create_table "sitedetails", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.boolean "admin"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "articles", "products"
  add_foreign_key "articles", "users"
  add_foreign_key "comments", "articles"
  add_foreign_key "comments", "users"
  add_foreign_key "newarrivals", "products"
  add_foreign_key "productcomments", "products"
  add_foreign_key "productcomments", "users"
  add_foreign_key "products", "categories"
end
