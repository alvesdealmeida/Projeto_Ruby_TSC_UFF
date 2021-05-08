require './Ex-04'

describe Retangulo do
  before(:each) do
    @r = Retangulo.new(2,3)
  end

  it 'TESTE BASE RETANGULO' do
    @r.base_retangulo() 
    expect(@r.base).to eql(2)
  end

  it 'TESTE ALTURA RETANGULO' do
    @r.altura_retangulo()
    expect(@r.altura).to eql(3)
  end

  it 'TESTE CALCULAR AREA DO RETANGULO' do 
    expect(@r.area).to eql(6)
  end

  it 'TESTE CALCULAR PERIMETRO DO RETANGULO' do
    expect(@r.perimetro).to eql(10)
  end

  it 'TESTE QUADRADO' do
    @r.quadrado()
  end

  after(:each) do
    @r=nil
  end
end
