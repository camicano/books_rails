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

  # get '/books', :to => 'books#index'

  # get '/books/new', :to => 'books#new'

  # post '/books/create', :to => 'books#create'

  # get '/books/:id', :to => 'books#show'

  # get '/books/:id/edit', :to => 'books#edit'

  # put '/books/:id/edited', :to => 'books#edited'

  # get '/books/:id/delete', :to => 'books#delete'

  # get '/books/:id/add_word', :to => 'books#add_word'

  # post '/books/:id/posted', :to => 'books#posted'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
