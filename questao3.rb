p "Digite quanto você guanha por hora:"
qh = gets.chomp.to_f
p = "Digite quantas horas você trabalhou:"
ht = gets.chomp.to_f

sb = qh*ht

ir = (11/100.0 * sb)
inss = (8/100.0 * sb)
sindicato = (5/100.0 * sb)

vt = ir+inss+sindicato
sl = sb - vt

puts sb

p "Valor dos impostos:"
puts ir
puts inss
puts sindicato

puts sl
