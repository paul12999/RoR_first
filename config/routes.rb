Rails.application.routes.draw do

  get "/yoo/123" , :to => "items#yoo"  #輸入/yoo/123,會到controlller的items
  get "/yoo/234" , :to => "items#hoo"

  #get '/yoo/:id/:type'  , :to => "static#index"
  #match "/hoo"  , :to => "static#test" , :via => [:post , :delete]
  
  #resource :items
  #root 'items#index'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
