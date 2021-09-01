class AddUrlToArtPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :art_posts, :url, :string
  end
end
