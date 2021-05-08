#Crie um Classe número que seja capaz de informar:
#a) os seus fatores primos;
#b) seu fatorial;
#c) o máximo divisor comum (MDC) entre ele mesmo e outro número;
#d) o mínimo múltiplo comum (MMC) entre ele mesmo e outro número.

class Numero
	attr_accessor :numero
	def initialize(numero)
		@numero = numero
	end

	def numero_digitado()
		@numero = numero
		puts "---> Numero Digitado: #{@numero}."
	end

	def fatorial_numero()
    fatorial = 1
    for i in (1..@numero)
     	fatorial = fatorial * i
    end
    puts "---> O Fatorial de #{@numero}?"
    puts "---> Fatorial = #{fatorial}"
    return fatorial
  end
  def mdc_numero(valor)
	 	maior = valor
   	menor = @numero
   	sobra = -1
   	if(menor > maior)
     		maior = menor
     		menor = valor
   	end
   	while (sobra != 0)
	     	sobra = (maior % menor)
	     	maior = menor
	     	menor = sobra
   	end
    puts "---> O MDC entre #{@numero} e #{valor}?"
   	puts "---> MDC =  #{maior}"
   	return maior
  end
   def mmc_numero(valor)
    x = @numero
    y = valor
    r = -1
    while (r != 0)
      r = (x % y)
      x = y
      y = r
    end
    mmc = (@numero * valor) / x
    puts "---> O MMC entre #{@numero} e #{valor}?"
    puts "---> MMC = #{mmc}"
    return mmc
  end
   def fatoracao_primo_numero()
    fatores = []
    primos = []
    for i in 2..(@numero / 2)
      if(@numero % i == 0)
        fatores.push(i)
      end
    end
    tamanho = fatores.size
    for z in 0..(tamanho - 1)
      x = 0 
      for j in 1..fatores[z] 
        if(fatores[z] % j == 0)
          x += 1
        end
      end
      if(x == 2)
        primos.push(fatores[z])
      end
    end
    n = @numero
    x = 0
    puts"---> Fatores primos de #{n}?"
    print "---> "
    while (n != 1)
      if(n % primos[x] == 0)
        n = n / primos[x]
        print"#{primos[x]} "
      else
        x += 1
      end  
    end
    puts "= #{@numero}"
  end
end