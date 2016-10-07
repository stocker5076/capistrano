class Persona
	attr_accessor :x
	attr_accessor :y
	attr_accessor :nombre

	def initialize(nombre, x=rand(1..10), y=rand(1..10))
		@nombre = nombre
		@x = x
		@y = y
	end

	def correr
		self.x = self.x + [-2,0,2].sample
		self.y = self.y + [-2,0,2].sample
	end

	def gritar

	end

	def morir

	end


	def to_s
		return "#{self.class} #{nombre}: x: #{self.x}  y: #{self.y}"
	end

end 

