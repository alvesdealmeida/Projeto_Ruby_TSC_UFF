class Treino
    attr_accessor :cod_treino,:nome,:totalCaloria,:tempoTotal,:horario,:data,:treinosExercicios#,:usuariosTreinos

    def initialize(cod_treino,nome,totalCaloria,tempoTotal,horario,data,treinosExercicios=[])#,usuariosTreinos=[])
        @cod_treino = cod_treino
        @nome = nome
        @totalCaloria = totalCaloria
        @tempoTotal = tempoTotal
        @horario = horario
        @data = data
        @treinosExercicios=treinosExercicios
        #@usuariosTreinos=usuariosTreinos
    end

    def inserir_treinosExercicios(treinoExercicio)
        if not (@treinosExercicios.include? treinoExercicio)
            @treinosExercicios << treinoExercicio
         end
    end

    #def inserir_usuariosTreinos(usuarioTreino)
    #    if not (@usuariosTreinos.include? usuarioTreino)
    #        @usuariosTreinos << usuarioTreino
    #     end
    #end

    def verificar_treinosExercicios(treinoExercicio)
        return (@treinosExercicios.include? treinoExercicio)
    end

    #def verificar_usuariosTreinos(usuarioTreino)
    #    return (@usuariosTreinos.include? usuarioTreino)
    #end
end