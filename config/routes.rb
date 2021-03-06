
Rails.application.routes.draw do
devise_for :users, :controllers => { registrations: 'registrations' }
  get 'welcome/index'
  get 'calendar_page/index'
  get 'users/index'
  get 'users/:id/edit', to: 'users#edit', as: :editing_user
  get 'users/show/:id', to: 'users#show'
  get'users/edit/:id' => 'products#destroy', :via => :delete

  get 'refreshes/new', to: 'refreshes#new'
  get 'refreshes/index' => 'refreshes#index', as: :index
  get 'refreshes/:id/edit', to: 'refreshes#edit', as: :editing
  get 'refreshes/show/:id', to: 'refreshes#show'
  get'refreshes/edit/:id' => 'products#destroy', :via => :delete
  get 'users/edit_password'
  resources :searches
  resources :refreshes
  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
