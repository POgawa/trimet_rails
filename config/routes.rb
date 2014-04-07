Trimet::Application.routes.draw do
  root :to => 'stations#index'
  resources :stations do
    resources :lines
  end
  resources :lines do
    resources :stations
  end
end
