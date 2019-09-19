class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true
      t.index ["post_id"], name: "index_comments_on_post_id"
      t.index ["user_id"], name: "index_comments_on_user_id"

      t.timestamps null: false
    end
  end
end
