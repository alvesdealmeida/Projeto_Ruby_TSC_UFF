require './TreinoExercicio'
require './Treino'
require './Exercicios'

describe Treino do
    before(:each) do
        @treino = Treino.new('001','Corrida',100,4,"08:00","07/03/2016")
        @usuarioTreino = nil
        @exercicio = Exercicios.new('001','nome',300,3,1,5)
        @treinoExercicio = TreinoExercicio.new("001", @treino, @exercicio)
    end

    it 'TESTE CRIANDO TREINO' do

        expect(@treino.cod_treino).to eql('001')
        expect(@treino.nome).to eql('Corrida')
        expect(@treino.totalCaloria).to eql(100)
        expect(@treino.tempoTotal).to eql(4)
        expect(@treino.horario).to eql("08:00")
        expect(@treino.data).to eql("07/03/2016")
        expect(@treino.treinosExercicios).to eql([])
        #expect(@treino.usuariosTreinos).to eql([])
    end

    it 'TESTE INSERINDO NOVO TREINO E VERIFICANDO' do
        @treino.inserir_treinosExercicios(@treinoExercicio)
        expect(@treino.verificar_treinosExercicios(@treinoExercicio)).to eql(true)
    end

    #it 'TESTE INSERIDO NOVO USUARIO' do
        #@treino.insert_usuariosTreinos(@usuarioTreino)
        #expect(@treino.verify_usuariosTreinos(@usuarioTreino)).to eql(true)
    #end

    after(:each) do
        @treino = nil
        @exercicio = nil
        @treinoExercicio = nil
    end
end