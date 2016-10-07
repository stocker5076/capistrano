class Zombie
	attr_accessor :x
	attr_accessor :y
	attr_accessor :nombre

	def initialize(nombre, x=rand(1..10), y=rand(1..10))
		@nombre = nombre
		@x = x
		@y = y
	end

	def caminar
		self.x = self.x + [-1,0,1].sample
		self.y = self.y + [-1,0,1].sample
	end

	def brains

	end

	def to_s
		return "#{self.class} #{nombre}: x: #{self.x}  y: #{self.y}"
	end

end 

