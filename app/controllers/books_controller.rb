class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.create(params[:book])
		redirect_to "/books/#{@book.id}"
	end

	def show
		id = params[:id]
		@book = Book.find(id)
	end

	def edit
		id = params[:id]
		@book = Book.find(id)
	end

	def update
		Book.update(params[:id], params[:book])

		redirect_to "/books/#{@book.id}"
	end

	def destroy
		@book = Book.find(params[:id])
		@book.delete

		redirect_to "/books"
	end
end








