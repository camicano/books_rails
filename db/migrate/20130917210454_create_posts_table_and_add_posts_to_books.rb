class CreatePostsTableAndAddPostsToBooks < ActiveRecord::Migration
  def change 	 
  	create_table :posts do |t|
  		t.string :message
  		t.timestamps
  	end
  	add_column :books, :post_id, :integer
  end
end
