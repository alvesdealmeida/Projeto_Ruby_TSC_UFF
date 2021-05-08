p "Digite quantos quilometros foi percorrido:"
km = gets.chomp.to_f
p "Digite quantos dias o carro foi alugado:"
d = gets.chomp.to_f

km = km*0.15
d = d*60

total = (km+d)

puts total

