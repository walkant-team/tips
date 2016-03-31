class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.string :url
      t.string :description
      t.text :content
      t.string :type

      t.timestamps null: false
    end
  end
end
