#Crie uma classe que modele uma conta corrente e que permita definir e consultar o numero
#da conta e o nome correntista, consultar o saldo e fazer depósitos e saques.

class Conta_corrente
  attr_accessor :saldo, :nome, :numero

  def initialize(nome, numero)
    @nome, @numero = nome, numero
    @saldo = 0
  end

  def consultar_nome_conta()
    @nome = nome
    puts "---> Nome da Conta: #{@nome}"
  end

  def consultar_numero_conta()
    @numero = numero
    puts "---> Numero da Conta: #{@numero}"
  end

  def consultar_saldo_conta()
    puts "---> Saldo da Conta #{@numero}: R$ #{@saldo}"
  end

  def depositar(valor)
    @saldo += valor
    puts "---> Depósitar na Conta #{@numero}: R$ #{valor}"
    puts "---> Saldo Atual: R$ #{saldo}"
  end
  
  def sacar(valor)
    @saldo = 100
    if (@saldo - valor) <= 0 
      puts "Saldo insuficiente !!!"
    else
      @saldo -= valor
      puts "---> Sacar na Conta #{@numero}: R$ #{valor}"
      puts "---> Saldo Atual: R$ #{saldo}"
    end
  end
end