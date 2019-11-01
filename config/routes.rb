Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "en"} do
    resources :jokes
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'home#index'
    get '/random', to: 'jokes#random', as: :random_joke
    post '/search', to: 'jokes#search', as: :search_joke
    post '/category', to: 'jokes#category', as: :category_joke
  end
end
