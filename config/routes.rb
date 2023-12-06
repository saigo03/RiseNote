Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  root to: "home#index"

  resources :memos
  get 'registration_complete', to: 'static_pages#registration_complete', as: 'registration_complete'
  get 'mypage', to: 'static_pages#mypage'
  get 'userInfo_select', to: 'static_pages#userInfo_select'
end
