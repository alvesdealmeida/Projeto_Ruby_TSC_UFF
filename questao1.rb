p "Digite os dias:"
a = gets.chomp.to_i
p "Digite as horas:"
b = gets.chomp.to_i
p "Digite os minutos:"
c = gets.chomp.to_i
p "Digite os segundos:"
d = gets.chomp.to_i

segs = (c*60)+(b*3600)+(a*86400)+d

puts segs
