puts 'Dame un numero'
a = gets.to_i
if a > 0
puts 'El numero es positivo'
elsif a == 0
puts 'El numero es cero'
elsif a < 0
puts 'El numero es negativo'
end

if a.even?
puts 'El numero es par'
else a.odd?
7.times{ puts 'El numero es impar'}
end