class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :set_layout

  def set_layout
  	if controller_name == "generates" and action_name == "z"
  		return 'landing'
  	else
  		return  'application'
  	end
  end

end
