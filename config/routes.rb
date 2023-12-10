Rails.application.routes.draw do
  get 'tags/index'
  get 'tags/new'
  get 'tags/create'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  
  root to: "home#index"
  get 'mypage', to: 'static_pages#mypage'
  get 'userInfo_select', to: 'static_pages#userInfo_select'

  resources :folders do
    resources :memos
    get 'registration_complete', to: 'static_pages#registration_complete', as: 'registration_complete'
  end

  # タグに関連するルートを追加
  resources :tags, only: [:index,:new, :create]
end
