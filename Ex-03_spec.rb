require './Ex-03'

describe Conta_corrente do
  
  before (:each) do
    @conta =  Conta_corrente.new("Filipe Roberto", "123456-7")
  end
  
  it 'TESTE CONSULTAR NOME DA CONTA' do
    @conta.consultar_nome_conta()
    expect(@conta.nome).to eql("Filipe Roberto")
  end

  it 'TESTE CONSULTAR NUMERO DA CONTA' do
    @conta.consultar_numero_conta()
    expect(@conta.numero).to eql("123456-7")
  end

  it 'TESTE CONSULTAR SALDO DA CONTA' do
    @conta.consultar_saldo_conta()
    expect(@conta.saldo).to eql(0)
  end

  it 'TESTE FAZER DEPOSITO NA CONTA' do
    @conta.depositar(100)
    expect(@conta.saldo).to eql(100)
  end

  it 'TESTE FAZER SAQUE NA CONTA' do
    @conta.sacar(25)
    expect(@conta.saldo).to eql(75)
  end

  after (:each) do
    @conta = nil
  end
end