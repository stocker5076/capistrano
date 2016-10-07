nombres =[["JAvier",24],["Colorado",45],["May",41],["Ross",19], ["Spitch",9],["Mike",21], ["Juanita",15]]

nombres_hash = nombres.to_h

llaves = nombres_hash.keys
valores = nombres_hash.values


p llaves
p valores

#Itera y aumenta en 10%
nombres_hash.each do |nombre, edad|
	nombres_hash[nombre] = (edad * 1.1).to_i
	end

p nombres_hash.inspect


#uso de select

p nombres_hash.select{|k,v| v<27}
p nombres_hash.reject{|k,v| v>27}