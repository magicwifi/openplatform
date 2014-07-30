Routerapp::Application.routes.draw do
  get "installed" => "plugins#installed"
  get "message" => "routers#show"
  post "ping" => "routers#ping"
  post "renew" => "routers#renew"
  post "installing" => "plugins#installing"
  post "uninstalling" => "plugins#uninstalling"
  post "checkpstatus" => "plugins#checkpstatus"
  post "removeing" => "plugins#uninstalling"
  resources :plugins
end
