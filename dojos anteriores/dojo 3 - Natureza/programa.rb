

class Node
  def initialize(nome)
    @nome = nome
    @relacoes = []
  end

  def nome
    @nome
  end

  def nome=(valor)
    @nome = valor
  end

  def relacoes
    @relacoes
  end

  def relacoes=(valor)
    @relacoes = valor
  end

  def add_relacao(valor)
    @relacoes.push valor
  end

end

class Cadeia
    attr_accessor :nodes

    def initialize
        @nodes = []
    end

    def add_node( valor )
        @nodes.push( valor )
    end

    def get_node(nome)
        no = nil

        @nodes.each do|no1|
            if no1.nome == nome
                no = no1
                break
            end
        end
        return no
    end

    def add_relacao( a, b )
        noa = self.get_node(a)
        nob = self.get_node(b)
        
        nob.add_relacao(noa)
    end


    def max_relacao
        rels = []

        @nodes.each do |no|
            rels.push(max_relacao_sub(no))
        end

        return rels.max + 1
    end

    def max_relacao_sub (no)
        rels = []

        if no.relacoes == []
           return 0
        else
            no.relacoes.each do |nointer|
                rels.push(max_relacao_sub(nointer))
            end
        end

        return rels.max + 1
    end
end



def interpretar(entrada)
  cadeia = Cadeia.new 
  linhas = entrada.split("\n")

  definicoes = linhas.delete_at(0)
  definicoes = definicoes.split
  num_animais = Integer(definicoes[0])
  num_relacoes = Integer(definicoes[1])

  for _ in (1..num_animais)
    no = Node.new linhas.delete_at(0)
    cadeia.add_node no
  end

  for _ in (1..num_relacoes)
    relacao = linhas.delete_at(0)
    a, b = relacao.split " "
    cadeia.add_relacao(a, b)
  end
  
  return cadeia
end


def resolver(entrada)
   cadeia = interpretar(entrada)
   return cadeia.max_relacao
end



