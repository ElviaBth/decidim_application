Rails.application.routes.draw do
  resources :contacts
  namespace :admin do
    resources :contacts
  end
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  mount Decidim::Core::Engine => '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
