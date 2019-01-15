Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/game" => "game#game"
  get "/try/:guess" => "game#try"
  get "/new_game" => "game#reset"
  get "/names/:player" => "game#names"
end
