Rails.application.routes.draw do



  root 'welcome#index'

  put 'login' => 'sessions#create', as: 'login'

  post 'login_and_watch' => 'sessions#create_then_watch', as: 'login_and_watch'
  delete 'logout' => 'sessions#destroy', as: 'logout'

  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
    get 'users/:user_id/report_card' => 'users#report_card'
    get 'users/:user_id' => 'users#show', as: 'show'
    get 'auth/:provider/callback' => 'sessions#create'
    get 'deauth/twitter' => "sessions#destroy"
    post 'users/:id/watch' => "users#watch", as: 'watch'
    put 'users/:user_id/district' => 'districts#update', as: :update_district
    put 'users/:user_id/unwatch' => 'users#unwatch', as: :unwatch

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
