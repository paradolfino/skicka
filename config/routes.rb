Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/messages' => 'messages#index'
  get '/messages/:id' => 'messages#show', as: :message
end
