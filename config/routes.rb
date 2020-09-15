Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    get "/bananas" => "bananas#index"
    post "/bananas" => "bananas#create"
    get "/bananas/:id" => "bananas#show"

  end
end
