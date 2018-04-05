Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'messages#index'
  get '/messages/:id' => 'messages#show', as: :message
  post '/messages' => 'messages#create'
end
