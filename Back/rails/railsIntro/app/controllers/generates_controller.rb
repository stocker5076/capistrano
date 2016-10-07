class GeneratesController < ApplicationController
	before_filter :get_data
	before_action :get_array, except: :x
  
	def get_array
		@hello = [1,2,3,4,5,6,7,8,9,0]
	end

  def x
  	
  end

  def y
  end

  def z
  end

  def pag3
  end

  def get_data
  	@estudiantes = []
  	for x in 0..19 do
  		@estudiantes << "Alumno #{x}"
  	end
  end

end
