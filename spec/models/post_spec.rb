require 'spec_helper'

describe Post do
	before :each do
		@book = Book.create(title: "rayuela", author: "cortazar")
		book = Book.create(title: "harry potter", author: "j.k. rowling")
		bk = Book.create(title: "katrina", author: "castro caicedo")
		@book.posts << Post.new(message: "great book")
		@book.posts << Post.new(message: "paris")
		@book.posts << Post.new(message: "argentina")
	end
	describe "#book_id" do	
		it "should return an integer that corresponds to a book" do
			@book.posts.first.book_id.should eq(1)
		end	
	end	
	describe "#message" do
		it "should return a string with the post" do
			@book.posts.first.message.should eq("great book")
		end
	end
	describe "#post_count" do
		it "should return an integer with the amount of entries to one specific book" do
			@book.posts.count.should eq(3)
		end
	end 
	describe "#book_post" do
		it "should return a string with the title of the book" do
			Post.count.should eq(3)
		end
	end
end	