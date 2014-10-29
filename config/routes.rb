Routerapp::Application.routes.draw do
  get "installed" => "plugins#installed"
  get "message" => "routers#show"
  post "ping" => "routers#ping"
  post "renew" => "routers#renew"
  post "installing" => "plugins#installing"
  post "uninstalling" => "plugins#uninstalling"
  post "checkpstatus" => "plugins#checkpstatus"
  post "boot" => "plugins#boot"
  get "checkstat" => "routers#checkstat"
  post "removeing" => "plugins#uninstalling"
  get "login_session" => "routers#create_login_session"
  post "publishcmd" => "routers#pub_cmd"
  resources :plugins
end
