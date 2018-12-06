require "cmath"
class Teorema
    def initialize
        @a = ''
        @b = ''
        @c = ''
    end

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
    
    def tipo_calc
        if (@a == 0 && (@b == 0 || @c == 0)) || (@b == 0 && @c == 0)
            puts "Insira os valores para cálculo!"
        else
            if @a == 0
                puts "O valor da hipotenusa é: #{hipotenusa}"
            elsif 
                puts "O valor do cateto é: #{cateto}"
            end
        end
        
    end

    def hipotenusa
        @a = @b**2 + @c**2
        @a = CMath.sqrt(@a)
    end

    def cateto
        if @b == 0
            @b = @a**2 - @c**2
            @b = CMath.sqrt(@b)
        elsif @c == 0
            @c = @a**2 - @b**2
            @c = CMath.sqrt(@c)
        end
    end
end