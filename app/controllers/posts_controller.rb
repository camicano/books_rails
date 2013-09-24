class PostsController < ApplicationController
	def new
		@book = Book.find(params[:id])
	end

	def create
		post = params[:post]
		posted = Post.new
		posted.message = post
		

		@book = Book.find(params[:id])
		@book.posts << posted
		@book.save

		redirect_to "/books/#{@book.id}"
	end

	def edit

	end

	def update

	end

	def destroy

	end
end