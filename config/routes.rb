Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  authenticate :user do
    mount_carnival_at '/'
    resources :people
    resources :addresses
    resources :countries
    resources :states
    resources :cities
    resources :photos
    resources :phones
    resources :posts
    resources :post_files

    post 'phones/add_to_mob' => 'phones#add_to_mobile', as: :add_phone_to_mobile
    post 'phones/add_to_home' => 'phones#add_to_home', as: :add_phone_to_home
    post 'phones/add_all_to_mobile' => 'phones#add_all_to_mobile', as: :add_all_to_mobile
  end
end
