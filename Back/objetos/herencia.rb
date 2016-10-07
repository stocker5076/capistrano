module automotores
	def contarAutomotores


	end

end


class Vehiculo
	@@objectsNumber =0
	attr_accessor :color

	def initialize(color)
		@color = color

	end

	def autonomia
		puts rand(100..2000) 
	end

end


class MyCar < Vehiculo


end



vocho = MyCar.new('amarillo')
vocho.autonomia





