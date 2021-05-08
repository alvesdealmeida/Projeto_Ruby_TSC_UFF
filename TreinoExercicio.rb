class TreinoExercicio
	attr_accessor :cod_treino_exercicio, :cod_treino, :cod_exercicio

	def initialize(cod_treino_exercicio, cod_treino, cod_exercicio)
		@cod_treino_exercicio = cod_treino_exercicio
		@cod_treino = cod_treino
		@cod_exercicio = cod_exercicio
	end
end