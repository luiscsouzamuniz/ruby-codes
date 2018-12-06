require "cmath"
# Classe para cálculo do teorema de pitágoras
# Author: Luis Carlos
# date: 2018-12-05
class Teorema
    def initialize
        #CARREGANDO AS VARIAVEIS DE INSTANCIA
        @a = ''
        @b = ''
        @c = ''
    end

    #SETANDO OS VALORES NAS VARIAVES DE INSTANCIA
    def set_a
		# SETANDO VALORES
		puts "Digite o Valor da Hipotenusa:"
		@a = gets.chomp.to_i
	end

	def set_b
		# SETANDO VALORES
		puts "Digite o Valor do Cateto I:"
		@b = gets.chomp.to_i
	end

	def set_c
		# SETANDO VALORES
		puts "Digite o Valor do Cateto II:"
		@c = gets.chomp.to_i
    end
    
    # DEFININDO O TIPO DE CALCULO
    def tipo_calc
        #OS CAMPOS DEVEM SER PREENCHIDOS CORRETAMENTE
        if (@a == 0 && (@b == 0 || @c == 0)) || (@b == 0 && @c == 0)
            puts "Insira os valores para cálculo!"
        else
            #SE NAO HOUVER HIPOTENUSA, CALCULE
            if @a == 0
                puts "O valor da hipotenusa é: #{hipotenusa}"

            #SE NAO HOUVER CATETO, CALCULE
            elsif 
                puts "O valor do cateto é: #{cateto}"
            end
        end
        
    end

    #CALCULO DE HIPOTENUSA
    def hipotenusa
        @a = @b**2 + @c**2
        @a = CMath.sqrt(@a)
    end

    #CALCULO DE CATETO
    def cateto
        #CATETO I
        if @b == 0
            @b = @a**2 - @c**2
            @b = CMath.sqrt(@b)
        #CATETO II
        elsif @c == 0
            @c = @a**2 - @b**2
            @c = CMath.sqrt(@c)
        end
    end
end