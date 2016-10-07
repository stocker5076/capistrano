Rails.application.routes.draw do
  get 'generates/x'

  get 'generates/y'

  get 'generates/z'

  get 'generates/pag3'

  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'

  #root 'pages#index'
  root 'generates#x'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
