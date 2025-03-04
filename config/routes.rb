Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get("/boards", { :controller => "boards", :action => "index" })
  get("/boards/:id", { :controller => "boards", :action => "show" })
  post("/insert_board", { :controller => "boards", :action => "create" })
  
  post("/insert_post", { :controller => "posts", :action => "create" })
end
