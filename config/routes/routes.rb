Rails.application.routes.draw do

  r301 %r{.*}, 'http://www.nationalschoolofjournalism.com$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != 'nationalschoolofjournalism.com'
  }

  resources :staffs
  resources :stories
  
  resources :students
  # resources :slants
  # get    'slant'                        => 'slants#index'
  # get    'slant/apply'                        => 'slants#new'

  resources :admission_forms
  get 'sessions/new'

  resources :users
  get 'student_publication/index'
  
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
 
  root 'landing_page#home'

  get    'login'                        => 'sessions#new'
  get    'signup'                       => 'users#new'
  get    'login'                        => 'sessions#new'
  post   'login'                        => 'sessions#create'
  delete 'logout'                       => 'sessions#destroy'

  get 'why_us'                          => 'landing_page#why_us'
  get 'placements'                      => 'landing_page#placements'
  get 'program'                         => 'landing_page#program'
  get 'faculty'                         => 'landing_page#faculty'
  get 'admission'                       => 'landing_page#admission'
  get 'admission/digitaljournalism'     => 'landing_page#digitaljournalism'
  get 'advisory_board'                  => 'landing_page#advisory_board'
  get 'brochure'                        => 'landing_page#brochure'
  get 'download_student_brochure'       => 'landing_page#download_student_brochure'
  get 'privacy_policy'                  => 'landing_page#privacy_policy'
  

  get 'student_publications'            => 'student_publication#index'

  get 'nsoj_news'                       => 'landing_page#nsoj_news'
  get 'nsoj_radio'                      => 'landing_page#nsoj_radio'
  get 'nsoj_tv'                         => 'landing_page#nsoj_tv'
  get 'videos'                         => 'videos#index'
  get 'nsoj_post'                       => 'landing_page#nsoj_post'
  get 'e-paper'                       => 'landing_page#nsoj_post'
  get 'gallery'                         => 'landing_page#nsoj_events'
  post 'contact'                        => 'contacts#create'
  post 'admission_contact'              => 'admission_contacts#create'

  get 'admission_form'                  => 'admission_forms#show'
  get 'edit_admission_form'             => 'admission_forms#edit'
  get 'edit_pgddj_admission'            => 'admission_forms#edit_pgddj'
  post 'update_admission_form'          => 'admission_forms#update'
  patch 'update_admission_form'         => 'admission_forms#update'
  get 'download_form'                   => 'admission_forms#download_form'
  get 'nsojpost' => 'stories#index'

  #feature links
  get 'feature/for-the-love-of-art' => 'stories#feature1'

  # Dummy Temp Links
  get 'News_Article.aspx'                    => 'student_publication#index'
  get 'Why_NSOJ.aspx'                        => 'landing_page#why_us'


end
