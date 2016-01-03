Rails.application.routes.draw do
  resources :nsoj_radios
  resources :nsoj_tvs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :galleries
  resources :blogs
 
  root 'landing_page#home'

  get 'why_us'              => 'landing_page#why_us'

  get 'program'             => 'landing_page#program'

  get 'admission'           => 'landing_page#admission'



  get 'nsoj_news'           => 'landing_page#nsoj_news'

  get 'nsoj_news_page'      => 'landing_page#nsoj_news_page'

  get 'nsoj_radio'          => 'landing_page#nsoj_radio'

  get 'nsoj_tv'             => 'landing_page#nsoj_tv'

  get 'nsoj_events'         => 'landing_page#nsoj_events'

  post 'contact'            => 'contacts#create'

  post 'admission_contact'  => 'admission_contacts#create'
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
