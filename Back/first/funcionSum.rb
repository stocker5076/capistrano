def function_one(number1, number2)
	return number1 + number2
end

puts "Dame un numero"
number1 = gets.to_i
puts "Dame otro numero"
number2 = gets.to_i


puts "La suma es #{function_one(number1,number2)}"
