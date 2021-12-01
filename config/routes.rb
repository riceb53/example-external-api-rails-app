Rails.application.routes.draw do
  get "/news_headlines" => "pages#newsapi_headlines"
  get "/auth/github/callback" => "github#authorize"
  get "/github_profile" => "github#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
