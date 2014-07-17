Routerapp::Application.routes.draw do
  get "install" => "plugins#installed"
  resources :plugins
end
