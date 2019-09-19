class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.belongs_to :post, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true
      t.index ["category_id"], name: "index_post_categories_on_category_id"
      t.index ["post_id"], name: "index_post_categories_on_post_id"
      t.timestamps null: false
    end
  end
end
