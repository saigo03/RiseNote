# 今後実装すること
# 新規登録時の実際のメールアドレスに確認メールを送る(deviseを使って実装可能)
# ユーザーIDの自動番号の変更（デフォルトで４桁など)

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # カスタムユーザーコントローラのルーティング
  resources :users, only: [:index, :destroy]
  
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
