def function3
	even_numbers =[]
	for x in 1..100
		even_numbers << x if x.even?
	end
	puts even_numbers.inspect
end

function3