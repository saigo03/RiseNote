# 今後実装すること
# 新規登録時の実際のメールアドレスに確認メールを送る(deviseを使って実装可能)
# ユーザーIDの自動番号の変更（デフォルトで４桁など)

Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  #ログイン状態であればノート一覧へ
  authenticated :user do
    root to: 'folders#index', as: :authenticated_root
  end

  #ログインしていない場合はホームページへ
  unauthenticated do
    root to: 'home#index'
  end

  # カスタムユーザーコントローラのルーティング
  resources :users, only: [:index, :destroy, :show]
  
  get 'learning_records', to: 'learning_records#show'

  resources :folders do
    resources :memos
  end

  resources :missions, only: [:index]

  # タグに関連するルート
  resources :tags, only: [:index, :create, :destroy]

  # お問い合わせルート
  resources :posts, only: [:new, :create, :index, :show]
end
