
class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :post_title
      t.string :post_body
      t.timestamp null: false
    end
  end
end