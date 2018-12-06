require_relative 'Teorema.rb'
class Init
    # CARREGANDO A CLASSE INIT
	def initialize()
		# VARIAVEL COM @ É VARIAVEL DE INSTANCIA. TODA A CLASSE TERÁ ACESSO A ELA
		# CHAMANDO A CLASSE RESPONSAVEL PELO CALCULO
		@teorema = Teorema.new
		# EXECUTANDO O LOOP DA CALCULADORA
		calculadora
	end

	# PEGANDO OS CAMPOS A, B e C
	def set_campos
		@teorema.set_a
		@teorema.set_b
		@teorema.set_c
	end

	# FAZENDO O LOOP NO SISTEMA PARA EXECUTAR MAIS DE UMA VEZ
	def loop_system
		@i = 0
		while @i < 1
			yield
		end
	end

	# BLOCO DE REPETICAO DENTRO DO loop_system
	def calculadora
		loop_system do
            set_campos
			@teorema.tipo_calc
			
			puts "Sair (S/N)"

			repeat = gets.chomp.to_s

			if repeat == 'S' || repeat == 's'
				@i += 1
			else
				system 'clear'
			end
        end
	end

end