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
  end
end
