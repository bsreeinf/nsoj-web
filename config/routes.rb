Rails.application.routes.draw do
  resources :admission_forms
  get 'sessions/new'

  resources :users
  get 'student_publication/index'

  resources :nsoj_posts
  resources :nsoj_tvs
  resources :nsoj_radios
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :galleries
 
  root 'landing_page#home'

  get    'login'                        => 'sessions#new'
  get    'signup'                       => 'users#new'
  get    'login'                        => 'sessions#new'
  post   'login'                        => 'sessions#create'
  delete 'logout'                       => 'sessions#destroy'

  get 'why_us'                          => 'landing_page#why_us'
  get 'program'                         => 'landing_page#program'
  get 'admission'                       => 'landing_page#admission'
  get 'advisory_board'                  => 'landing_page#advisory_board'

  get 'student_publications'            => 'student_publication#index'

  get 'nsoj_news'                       => 'landing_page#nsoj_news'
  get 'nsoj_radio'                      => 'landing_page#nsoj_radio'
  get 'nsoj_tv'                         => 'landing_page#nsoj_tv'
  get 'nsoj_post'                       => 'landing_page#nsoj_post'
  get 'nsoj_events'                     => 'landing_page#nsoj_events'
  post 'contact'                        => 'contacts#create'
  post 'admission_contact'              => 'admission_contacts#create'

  get 'admission_form'                  => 'admission_forms#show'
  get 'update_admission_form'       => 'admission_forms#edit'

end
