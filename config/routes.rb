Rails.application.routes.draw do
  devise_for :users

  resources :journeys, only: [:index, :new, :create, :show] do
    resources :steps
  end

  root to: 'journeys#new'

  get 'faq', to: 'pages#faq', as: :faq
  get 'testimonials', to: 'pages#testimonials', as: :testimonials
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
