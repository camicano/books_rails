class Post < ActiveRecord::Base
	attr_accessible :message 
	belongs_to :book
end