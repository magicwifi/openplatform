Routerapp::Application.routes.draw do
  get "installed" => "plugins#installed"
  get "message" => "routers#show"
  post "ping" => "routers#ping"
  post "renew" => "routers#renew"
  post "installing" => "plugins#installing"
  post "uninstalling" => "plugins#uninstalling"
  post "checkpstatus" => "plugins#checkpstatus"
  get "checkstat" => "routers#checkstat"
  post "removeing" => "plugins#uninstalling"
  post "login_session" => "routers#create_login_session"
  post "publishcmd" => "routers#pub_cmd"
  resources :plugins
end
