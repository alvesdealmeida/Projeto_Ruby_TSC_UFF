# 4 - Crie uma classe que modele um retângulo e permita definir a altura e a largura.
#A classe também deve permitir definir e alterar o ponto que representa o centro
#do retângulo e permitir que sejam consultados os pontos dos quatro vértices.
#Um ponto deve ser modelado por outra classe, e deve permitir definir e
#consultar valores x e y do ponto. O objeto também deve informar sua área, seu
#perímetro e se é um quadrado.

class Retangulo
  attr_accessor :base, :altura

  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def base_retangulo()
    @base = base
    puts "---> A base do Retangulo = #{@base} m."
  end

  def altura_retangulo()
    @altura = altura
    puts "---> A altura do Retangulo = #{@altura} m."
  end

  def area()
   area = @base * @altura
   puts "---> A area do retangulo #{@base} m de Base X #{@altura} m de altura = #{area} m²."
   return area
  end

  def perimetro()
    perimentro = (2 * @base) + (2 * @altura)
    puts "---> O perimentro do retangulo #{@base} m de Base X #{@altura} m de altura = #{perimentro} m."
    return perimentro
  end

  def quadrado()
    if(@base == @altura)
      puts "---> Trata-se de um Quadrado."
    else
      puts "---> Trata-se de um Retangulo."
    end
  end 

end
