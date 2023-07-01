Rails.application.routes.draw do
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "registrations",
    sessions: "sessions"
  }
  root to: 'homes#top'
  get 'about' => 'homes#about'
  resources :users, only: [:index, :show, :edit, :update]
end
