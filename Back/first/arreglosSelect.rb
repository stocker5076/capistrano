nombres =["JAvier","Colorado","May","Ross", "Spitch","Mike", "Juanita"]

nombresM5 = nombres.select{|name| name.size >5}
nombresm5 = nombres.reject{|name| name.size <5}

puts nombresM5.inspect
puts nombresm5.inspect