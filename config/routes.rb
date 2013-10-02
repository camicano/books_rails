Books::Application.routes.draw do
  root :to => 'welcome#index'
  
  resources :books do
    resource :posts
  end

#         root        /                                    welcome#index
#      book_posts POST   /books/:book_id/posts(.:format)      posts#create
#  new_book_posts GET    /books/:book_id/posts/new(.:format)  posts#new
# edit_book_posts GET    /books/:book_id/posts/edit(.:format) posts#edit
#                 GET    /books/:book_id/posts(.:format)      posts#show
#                 PUT    /books/:book_id/posts(.:format)      posts#update
#                 DELETE /books/:book_id/posts(.:format)      posts#destroy
#           books GET    /books(.:format)                     books#index
#                 POST   /books(.:format)                     books#create
#        new_book GET    /books/new(.:format)                 books#new
#       edit_book GET    /books/:id/edit(.:format)            books#edit
#            book GET    /books/:id(.:format)                 books#show
#                 PUT    /books/:id(.:format)                 books#update
#                 DELETE /books/:id(.:format)                 books#destroy
end
