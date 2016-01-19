Rails.application.routes.draw do
  get 'student_publication/index'

  resources :nsoj_posts
  resources :nsoj_tvs
  resources :nsoj_radios
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :galleries
 
  root 'landing_page#home'

  get 'why_us'              => 'landing_page#why_us'

  get 'program'             => 'landing_page#program'

  get 'admission'           => 'landing_page#admission'

  get 'student_publications'=> 'student_publication#index'

  get 'nsoj_news'           => 'landing_page#nsoj_news'
  get 'nsoj_radio'          => 'landing_page#nsoj_radio'
  get 'nsoj_tv'             => 'landing_page#nsoj_tv'
  get 'nsoj_post'           => 'landing_page#nsoj_post'

  get 'nsoj_events'         => 'landing_page#nsoj_events'

  post 'contact'            => 'contacts#create'

  post 'admission_contact'  => 'admission_contacts#create'
end
