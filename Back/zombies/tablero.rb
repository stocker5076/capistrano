require_relative 'persona'
require_relative 'zombie'

class Tablero
	attr_accessor :personas
	attr_accessor :zombies
	attr_accessor :ncuadros


	def initialize(ncuadros, personas,zombies)
		@ncuadros = ncuadros
		@personas = personas
		self.zombies = zombies
	end

	def estadoActual
		puts "******Zombies******"
		puts zombies
		puts "\n"
		puts "******Personas*****"
		puts personas
	end

	def moverse

	end

end




personas = [Persona.new("pako"), Persona.new("Luis")]
zombies = [Zombie.new("Zombifero")]

tablero = Tablero.new(20,personas,zombies)

tablero.estadoActual
