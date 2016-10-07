class ModeloLego
	attr_accessor :size

	def initialize(size_par =1)
		@size = size_par
	end

	def acoplar (otroLego)
		return ModeloLego.new(self.size + otroLego.size)
	end 
end


lego1 = ModeloLego.new
lego2 = ModeloLego.new(4)

lego3 = lego1.acoplar(lego2)
p lego3.size


lego4 = ModeloLego.new(9)
p lego4.acoplar(lego3).size