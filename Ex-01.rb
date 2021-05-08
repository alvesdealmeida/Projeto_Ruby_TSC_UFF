# 1 - Crie e teste uma classe que modele uma bomba de combustível e permita definir a capacidade da bomba, o preço do combustível 
#por litro e permita encher a bomba (sempre encher completamente) e consultar sua quantidade de combustível. É necessário também
#que seja permitido abastecer por valor (retornando a quantidade de combustível abastecida), abastecer por quantidade de litros 
#(retornando o valor a ser pago). Deve ser permitido também alterar o valor do preço por litro. Deve ser tratada a situação de não haver
#combustível suficiente na bomba para um determinado abastecimento.
class Bomba_combustivel
	attr_accessor :capacidade, :preco_litro, :nivel

	def initialize(capacidade, preco_litro, nivel)
		@capacidade = capacidade
		@preco_litro = preco_litro
		@nivel = nivel
	end

	def capacidade_bomba()
		@capacidade = capacidade
		puts "---> Capacidade Bomba: #{@capacidade} litros."
	end

	def preco_bomba()
		@preco_litro = preco_litro
		puts "---> Preco Combustivel/litro: R$ #{@preco_litro}"
	end

	def nivel_bomba()
		@nivel = nivel
		puts "---> Nivel Bomba: #{@nivel} litros."
	end

	def encher_bomba()
		@nivel = capacidade - nivel
		puts "---> Encher Bomba: #{@nivel} litros."
	end

	def consultar_quantidade_combustivel()
		@nivel = nivel
		puts "---> Quantidade Combustivel: #{@nivel} litros."
	end

	def abastecer_quantidade(valor)
		litros = (valor / @preco_litro)
    	if (@nivel - litros) < 0
      		puts "---> Nao havera combustivel suficiente para abastecer."
    	else
      		puts "---> Foram abastecidos #{litros} litros de combustivel."
      		@nivel -= litros
      		puts "---> O nivel da Bomba Combustivel: #{@nivel} litros."
    	end
	end

	def abastecer_valor(litros)
		preco = (litros * @preco_litro)
    	if (@nivel - litros) < 0
      		puts "---> Nao havera combustivel suficiente para abastecer."
    	else
      		puts "---> Foram abastecidos #{litros} litros de combustivel."
      		puts "---> Foram gastos R$ #{preco}"
      		@nivel -= litros
      		puts "---> O nivel da Bomba Combustivel: #{@nivel} litros."
    	end
	end
end
