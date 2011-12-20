require "programa"
require "test/unit"

$entrada =  "5 2
caterpillar
bird
horse
elefant
herb
herb caterpillar
caterpillar bird

0 0
"

$entrada2 =  "5 5
herb
cater
bird
chick
wolf
herb cater
cater bird
bird chick
chick wolf
cater chick

0 0
"


class TestSimpleNumber < Test::Unit::TestCase
 
  def test_criacao
    cadeia = Node.new("bird")  
    assert_equal('bird', cadeia.nome)
    assert_equal([], cadeia.relacoes )
  end
 
  def test_relacao
    animal1 = Node.new("bird")  
    animal2 = Node.new("herb")
    animal1.add_relacao(animal2)
    assert_equal(animal1.relacoes, [animal2])
  end

  def test_criacao_animais
    cadeia = interpretar $entrada
    assert_equal(cadeia.nodes.length, 5)
  end  

  def test_relacoes
    cadeia = interpretar $entrada
    assert_equal(cadeia.get_node('caterpillar').relacoes.length, 1)
    assert_equal(cadeia.get_node('herb').relacoes.length, 0)
  end  

  def test_resolver
    max = resolver $entrada
    assert_equal(max, 3)
  end  

  def test_resolver2
    max = resolver $entrada2
    assert_equal(max, 5)
  end  

end


# assert_equal
# assert_notequal
# assert_raises



