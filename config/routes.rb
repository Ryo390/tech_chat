Rails.application.routes.draw do
  root to: "chats#index"
  get "/index", to: "chats#index", as: :index
  get "/new", to: "chats#new", as: :new_chat
  post "/new", to: "chats#create"
end

