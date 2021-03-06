Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations"}

  get 'first_login' => 'hait#first_login', as: :user_root
  
  post 'hait/user_type_update'
  
  get 'hait/index'

  get 'hait/mypage'
  
  get 'hait/room_search'
  
  get 'hait/room_register/:house_id' => 'hait#room_register'
  
  get 'hait/home_register'
  
  get 'hait/room_like'
  
  get 'hait/room_list'
  
  get 'hait/profile/:user_id' => 'hait#profile'
  
  get 'hait/profile_update_view/:user_id' => 'hait#profile_update_view'
  
  post 'hait/profile_update/:user_id' => 'hait#profile_update'
  
  get 'hait/room_detail/:room_id' => 'hait#room_detail'
  
  get 'hait/room_detail2/:room_id' => 'hait#room_detail2'
  
  get 'hait/home_management'
  
  get 'hait/event_notice'
  
  get 'hait/room_search' 
  
  get 'hait/ticket_buy'
  
  get 'hait/ticket_history/:user_id' => 'hait#ticket_history'
  
  get 'hait/use_ticket/:user_id/:room_id' => 'hait#use_ticket'
  
  get 'hait/buy_ticket/:user_id' => 'hait#buy_ticket'
  
  post '/home_enrollment' => 'hait#home_enrollment'
  
  post '/room_enrollment' => 'hait#room_enrollment'
  
  post '/hait/room_update' => 'hait#room_update'
  
  get 'hait/room_update_view/:room_id' => 'hait#room_update'
  
  root 'hait#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
