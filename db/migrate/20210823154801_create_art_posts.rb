class CreateArtPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :art_posts do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.boolean :sold, :default => "false"
      t.integer :user_id

      t.timestamps
    end
  end
end
