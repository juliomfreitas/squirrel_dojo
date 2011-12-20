require "programa"
require "test/unit"


class TestSimpleNumber < Test::Unit::TestCase
 
  def test_inicializacao_programa
      programa = Programa.new(2)
  end
   
  def test_tem_balao
        tabuleiro = Tabuleiro.new(9)
        tabuleiro.addLinha(1, 0)

        assert_equal true, tabuleiro.temBalao(1,0)
  end

  def test_resolucao_linha
        tabuleiro = Tabuleiro.new(9)
        tabuleiro.addLinha(0, 0)
        tabuleiro.addLinha(0, 1)
        tabuleiro.addLinha(0, 2)
        tabuleiro.addLinha(0, 3)
        tabuleiro.addLinha(0, 4)
        assert_equal 5, tabuleiro.resolver_por_linha
   end

  def test_resolucao_coluna
        tabuleiro = Tabuleiro.new(9)
        tabuleiro.addLinha(0, 0)
        tabuleiro.addLinha(1, 0)
        tabuleiro.addLinha(2, 0)
        tabuleiro.addLinha(3, 0)
        tabuleiro.addLinha(3, 1)
        assert_equal 4, tabuleiro.resolver_por_linha
   end



  def test_resolucao
        tabuleiro = Tabuleiro.new(9)
        tabuleiro.addLinha(0, 0)
        tabuleiro.addLinha(1, 1)
        tabuleiro.addLinha(1, 2)
        tabuleiro.addLinha(1, 3)
        tabuleiro.addLinha(2, 1)
        tabuleiro.addLinha(2, 2)
        tabuleiro.addLinha(2, 3)
        tabuleiro.addLinha(3, 2)
        tabuleiro.addLinha(3, 3)

        assert_equal 3, tabuleiro.resolver_por_linha()
   end

 
end


# assert_equal
# assert_notequal
# assert_raises



