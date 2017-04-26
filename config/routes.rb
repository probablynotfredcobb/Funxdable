Rails.application.routes.draw do

  resources :parties

  get 'calendar/show'

  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"


end
