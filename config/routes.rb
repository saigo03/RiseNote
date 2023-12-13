# 今後実装すること
# 新規登録時の実際のメールアドレスに確認メールを送る(deviseを使って実装可能)

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  
  root to: "home#index"
  get 'mypage', to: 'static_pages#mypage'
  get 'userInfo_select', to: 'static_pages#userInfo_select'
  get 'registration_complete', to: 'static_pages#registration_complete', as: 'registration_complete'

  resources :folders do
    resources :memos
  end

  # タグに関連するルートを追加
  resources :tags, only: [:index, :create, :destroy]
end
