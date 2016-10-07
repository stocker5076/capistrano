def ejercicios
	a = [1,2,3,4,5]
	b = []
	c = []
	d = []
	for i in a
	     b << i if i.even?
	end


	a.each do |i|
		c << i if i.even?
	end

	a.map do |i|
		d << i if i.even?
	end
	

	puts a.inspect
	puts b.inspect
	puts c.inspect
	puts d.inspect
end



def ejercicios2
	a=[1,12,3,45,21]
	b=[]
	c=[]

	a.each do |i|
		b << i if i < 15
	end

	a.map do |i|
		c <<	i if i < 15
		end

	puts a.inspect
	puts b.inspect
	puts c.inspect

end


def ejercicios3
	nombres =["Pedro","leovi","Paco","Jorge","Axel","Paola","Thriller","Sherley","Edgar","Arturo","Karen"]

	nombresCP = nombres.select{|name| name[0]=='P'}
	nombresSP = nombres.reject{|name| name[0]=='P'}

	puts nombres.inspect
	puts nombresCP.inspect
	puts nombresSP.inspect
end



ejercicios
ejercicios2
ejercicios3