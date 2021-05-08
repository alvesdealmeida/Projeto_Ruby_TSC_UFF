require './TreinoExercicio'
require './Treino'
require './Exercicios'

describe TreinoExercicio do
    before(:each) do
        @exercicio = Exercicios.new('001','nome',300,3,1,5)
        @treino = Treino.new('001','Corrida',100,4,"08:00","07/03/2016")
        @treinoExercicio = TreinoExercicio.new("001",@treino, @exercicio)
    end

    it 'TESTE CRIAR TREINO EXERCICIO' do
        expect(@treinoExercicio.cod_treino_exercicio).to eql('001')
        expect(@treinoExercicio.cod_exercicio).to eql(@exercicio)
        expect(@treinoExercicio.cod_treino).to eql(@treino)
        expect(@treinoExercicio.treino.nome).to eql('Corrida')
    end

    after(:each) do
        @treino = nil
        @exercicio = nil
        @treinoExercicio = nil
    end
end