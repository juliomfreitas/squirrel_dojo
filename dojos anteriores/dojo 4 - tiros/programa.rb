class Programa
    def initialize(numero_instancias)
        @numero_instancias = numero_instancias
    end
end


class Tabuleiro
    def initialize(numero_linhas)
        @numero_linhas = numero_linhas
        @tabuleiro = []
        @x = @y = 0
        @resultado = 0
    end

    def addLinha(x, y)
        if x > @x
            @x = x
        end

        if y > @y
            @y = y
        end

        if (@tabuleiro.at x).nil?
            @tabuleiro[x] = []
        end
        @tabuleiro[x][y] = true
    end

    def temBalao(x, y)
        not ((@tabuleiro.at x).nil? and @tabuleiro[x][y].nil?)
    end

    def resolver        
        return resolver_por_coluna()
        # Percorrendo as diagonais
    end

    def resolver_por_linha
        resultado = 0    
        for k in 0..@x
            resultado_parcial = 0
            for m in 0..@y
                if temBalao(k, m)
                    resultado_parcial += 1
                end
            end 
            puts resultado_parcial
            resultado = resultado_parcial if resultado_parcial > resultado
        end
        return resultado
    end
    
    def resolver_por_coluna
        resultado = 0    
        
        for k in 0..@y
            resultado_parcial = 0
            for m in 0..@x
                puts "#{x}, #{y}"
                if temBalao(k, m)
                    resultado_parcial += 1
                end
            end 
            resultado = resultado_parcial if resultado_parcial > resultado
        end
        return resultado 
    end    
end
