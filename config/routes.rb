Rails.application.routes.draw do
  root 'application#index'
  get "/" => "application#index"
  get "/data" => "application#get_data"
end
