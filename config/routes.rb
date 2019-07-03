Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "/author/:id", to: "authors#show", as: "author"
get "/authors/new", to: "authors#new", as: "new_author"
post "/authors/", to: "authors#create"
get "/authors/:id/edit", to: "authors#edit", as: "edit_author"
patch "/author/:id", to: "authors#update"

get "/post/:id", to: "posts#show", as: "post"
get "/posts/new", to: "posts#new", as: "new_post"
post "/posts/", to: "posts#create"
get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
patch "/post/:id", to: "posts#update"



end
