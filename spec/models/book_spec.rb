require 'spec_helper'

describe Book do
	before :each do
		@book = Book.new(title: "rayuela", author: "cortazar")
		book = Book.new(title: "harry potter", author: "j.k. rowling")
		bk = Book.new(title: "katrina", author: "castro caicedo")
		@book.posts << Post.new(message: "great book")
		@book.posts << Post.new(message: "paris")
		@book.posts << Post.new(message: "argentina")
	end
	describe "#book_title" do
		it "should return a string that is the same as the title of the book" do
			@book.title.should eq("rayuela")
		end
	end	
	describe "#book_author" do
		it "should return a string that is the same as the author of the book" do
			@book.author.should eq("cortazar")
		end	
	end	
	describe "#book_posts" do
		it "should return an array of posts" do
			@book.posts.all.should eq(Post.all)
		end	
	end
	describe "#book_count" do
		it "should return an integer that equals the amount of book on the table" do
			@book.posts.last.message.should eq("argentina")
		end
	end
	describe "#book_posts" do
		it "should return an array with all the posts that belong to the book" do
			@book.posts.all.should eq(Post.all)
		end
	end	
	describe "#book_first_post" do
		it "should return a string with the first post that belong to the book" do
			@book.posts.first.message.should eq("great book")
		end
	end	
end