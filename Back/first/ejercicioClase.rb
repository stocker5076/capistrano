persons = {
:person1 => ['alex', 'mexico', 'america', 'm'],
:person2 => ['pedro', 'Mexico', 'America', 'm'],
:person3 => ['raul', 'MEXICO', 'america', 'm'],
:person4 => ['flor', 'usa', 'America', 'f'],
:person5 => ['monica', 'USA', 'AMERICA', 'f'],
:person6 => ['pedro', 'usa', 'america', 'm'],
:person7 => ['jorge', 'Usa', 'americA', 'm'],
:person8 => ['arturo', 'francia', 'europa', 'm'],
:person9 => ['brenda', 'Francia', 'europa', 'f'],
:person10 => ['paty', 'francia', 'EUROPA', 'f'],
:person11 => ['rafael', 'japon', 'ASIA', 'm'],
:person12 => ['daniel', 'japon', 'ASIA', 'm'],
:person13 => ['rocio', 'japon', 'asia', 'f'],
:person14 => ['pedro', 'Camerun', 'africa', 'm'],
:person15 => ['ana', 'camerun', 'Africa', 'f'],
:person16 => ['juan', 'CAMERUN', 'AFRICA', 'm'],
:person17 => ['jose', 'londres', 'europa', 'm'],
:person18 => ['pedro', 'londres', 'euROPA', 'm'],
:person19 => ['karla', 'colombia', 'amerICA', 'f'],
:person20 => ['andrea', 'colombia', 'aMerica', 'f']
}

p persons
p "El tamaño del hash #{persons.size}"

continentes = []

persons.each do |k,v|
	continentes << v[2].upcase
end

p "El arreglo de continentes es #{continentes.uniq}"

continentes_hash ={}
paises =[]
continentes.each do |continente|

	persons.each do |k,v|
		paises << v[1].upcase if v[2].upcase == continente
	end
	continentes_hash[continente] = paises.uniq
	paises = []

end


p continentes_hash.inspect


