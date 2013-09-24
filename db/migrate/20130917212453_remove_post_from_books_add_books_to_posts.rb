class RemovePostFromBooksAddBooksToPosts < ActiveRecord::Migration
  def change
  	remove_column :books, :post_id
  	add_column :posts, :book_id, :integer
  end
end
