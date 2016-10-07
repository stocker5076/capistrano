def function_one(name,age)
	return "Tu nombre es #{name} y tu edad #{age}"
end

puts "Ingresa tu nombre"
name = gets.chomp
puts "Ingresa tu edad"
age = gets.chomp

puts function_one(name,age)

