Rails.application.routes.draw do
 
  get 'perro2/index'

  devise_for :perros, controllers: {
 sessions: "perros/sessions",
 registrations: "perros/registrations",
 omniauth_callbacks: "perros/omniauth_callbacks"
} 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
