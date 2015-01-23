Rails.application.routes.draw do
  
  
  

  devise_scope :user do
  get '/Logout' => 'devise/session#delete', as: 'Logout'
end

  devise_for :users

  root 'martial_arts#index'

  get 'static_pages/home'

  get 'static_pages/help'

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/search' => 'martial_arts#search'
  get '/new' => 'martial_arts#add'
  get '/karate' => 'martial_arts#karate' 
  get '/kung_fu' => 'martial_arts#kung_fu' 
  get '/judo' => 'martial_arts#judo' 
  get '/tai_chi' => 'martial_arts#tai_chi' 
  get '/taekwondo' => 'martial_arts#taekwondo' 
  get '/aikido' => 'martial_arts#aikido' 
  get '/krav_maga' => 'martial_arts#krav_maga' 
  get '/jui_jitsu' => 'martial_arts#jui_jitsu' 
  get '/brazilian_jui_jitsu' => 'martial_arts#brazilian_jui_jitsu' 
  get '/muay_thai' => 'martial_arts#muay_thai' 
  get '/kung_fu' => 'martial_arts#kung_fu'  
  #post '/blog' => 'martial_arts#blog' as: :blogs
  post '/new' => 'martial_arts#create', as: 'martial_arts'
  post '/comment' => 'martial_arts#comment', as: 'user_comment'

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
  #   

end

       
 


