require './Ex-02'

describe Numero do
	before(:each) do
  	@num = Numero.new(4)
  end

  it 'TESTE NUMERO' do
    @num.numero_digitado()
    expect(@num.numero).to eql(4)
  end

  it 'TESTE FATORIAL' do
    fatorial = @num.fatorial_numero()
    expect(fatorial).to eql(24)
  end

  it 'TESTE MDC' do
    maior = @num.mdc_numero(10)
    expect(maior).to eql(2)
  end

  it 'TESTE MMC' do
    mmc = @num.mmc_numero(10)
    expect(mmc).to eql(20)
  end

  it 'TESTE FATORES PRIMOS' do
    @num.fatoracao_primo_numero()
  end
end