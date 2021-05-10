Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Send all non-api routes to react
  root 'react#main'
  get '*path' => 'react#main', constraints: 
    lambda { |request| 
      request.path != "/api" and !request.path.start_with?("/api/")
    }
end
