Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  authenticate :user do
    mount_carnival_at '/'
    resources :people
  end
end
