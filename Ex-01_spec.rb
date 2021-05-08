require './Ex-01'

describe Bomba_combustivel do
  before(:each) do
    @bomba = Bomba_combustivel.new(100, 4.0, 20.0)
  end
  it 'TESTE CAPACIDADE BOMBA' do
    @bomba.capacidade_bomba()
    expect(@bomba.capacidade).to eql(100)
  end
  it 'TESTE PRECO/LITRO COMBUSTIVEL' do
    @bomba.preco_bomba()
    expect(@bomba.preco_litro).to eql(4.0)
  end
  it 'TESTE NIVEL BOMBA' do
    @bomba.nivel_bomba()
    expect(@bomba.nivel).to eql(20.0)
  end
  it 'TESTE ENCHER BOMBA' do
    @bomba.encher_bomba()
    expect(@bomba.nivel).to eql(80.0)
  end
  it 'TESTE QUANTIDADE COMBUSTIVEL' do
    @bomba.consultar_quantidade_combustivel()
    expect(@bomba.nivel).to eql(20.0)
  end
  it 'TESTE ABASTECER QUANTIDADE' do
    @bomba.abastecer_quantidade(20.0)
    expect(@bomba.nivel).to eql(15.0)
  end
  it 'TESTE ABASTECER VALOR' do
    @bomba.abastecer_valor(12.0)
    expect(@bomba.nivel).to eql(8.0)
  end

it 'TESTE ABASTECER VALOR' do
    @bomba.abastecer_valor(21.0)
    expect(@bomba.nivel).to eql(20.0)
  end

  after(:each) do
    @bomba = nil
  end
end