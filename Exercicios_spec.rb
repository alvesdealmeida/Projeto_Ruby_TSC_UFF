require './TreinoExercicio'
require './Treino'
require './Exercicio'

describe Exercicio do
    before(:each) do
        @exercicio = Exercicio.new('001','nome',300,3,1,5)
        @treino = Treino.new('001','Corrida',100,4,"08:00","07/03/2016")
        @treinoExercicio = TreinoExercicio.new("001",@treino,@exercicio)

    end

    it 'TESTE CRIAR EXERCICIOS' do
        expect(@exercicio.codigo).to eql('001')
        expect(@exercicio.nome).to eql('nome')
        expect(@exercicio.caloriaGasta).to eql(300)
        expect(@exercicio.numeroSerie).to eql(3)
        expect(@exercicio.tempoDescanso).to eql(1)
        expect(@exercicio.tempoExercicio).to eql(5)
        expect(@exercicio.treinosExercicios).to eql([])
    end

    it 'TESTE INSERIR NOVO TREIRNO EXERCICIO E VERIFICAR' do
        @exercicio.insert_treinosExercicios(@treinoExercicio)
        expect(@exercicio.verify_treinosExercicios(@treinoExercicio)).to eql(true)
    end

    after(:each) do
        @treino = nil
        @exercicio = nil
        @treinoExercicio = nil
    end
end