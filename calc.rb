
class Calc

    def initialize  
       system 'clear'
       loop_calc do
            menu
            menu_options
       end
    end

    def menu
        puts 'Selecione a aplicação que deseja executar:'
        puts '1 - Bhaskara'
        puts '2 - Teorema de Pitágoras'
        puts '0 - Sair'
    end

    def menu_options
        @calc = gets.chomp.to_i
        system 'clear'
        if @calc === 1
            require_relative 'bhaskara/Init.rb'
            init = Init.new
            system 'clear'
        
        elsif @calc === 2
            require_relative 'teorema/Init.rb'
            init = Init.new
            system 'clear'

        elsif @calc === 0
            puts "Bye..."
            sleep(1)
            system 'clear'
            @i += 1
        end
    end

    def loop_calc
        @i = 0

        while @i == 0
            yield
        end
    end
end

calc = Calc.new

