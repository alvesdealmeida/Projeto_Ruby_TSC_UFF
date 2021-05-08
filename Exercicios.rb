class Exercicios
    attr_accessor :cod_exercicio,:nome,:caloria_gasta,:numero_serie,:tempo_descanso,:tempo_exercicio,:treinosExercicios

    def initialize(cod_exercicio,nome,caloria_gasta,numero_serie,tempo_descanso,tempo_exercicio,treinosExercicios=[])
        @cod_exercicio = cod_exercicio
        @nome = nome
        @caloria_gasta = caloria_gasta
        @numero_serie = numero_serie
        @tempo_descanso = tempo_descanso
        @tempo_exercicio = tempo_exercicio
        @treinosExercicios=treinosExercicios

    end

    def inserir_treinosExercicios(treinoExercicio)
        if not (@treinosExercicios.include? treinoExercicio)
            @treinosExercicios << treinoExercicio
        end
    end

    def verificar_treinosExercicios(treinoExercicio)
        return (@treinosExercicios.include? treinoExercicio)
    end
end