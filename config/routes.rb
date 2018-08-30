Rails.application.routes.draw do
  root 'members#index'

  get "team_members/login"
  get "team_members/finalize"
  get "team_members/validate"
  get "team_members/index"
  get "team_members/add"
  get "team_members/show"
  get "team_members/update"
  get "team_members/reset_password"
  get 'managers/login'
  get 'managers/validate'
  get 'managers/index'
  get 'managers/show'
  get 'managers/add'
  get 'managers/insert'
  get '/places/suggested_places_add'
  get '/places/add'

end
