require_relative "Bhaskara.rb"

class Init	

	# CARREGANDO A CLASSE INIT
	def initialize()
		# VARIAVEL COM @ É VARIAVEL DE INSTANCIA. TODA A CLASSE TERÁ ACESSO A ELA
		# CHAMANDO A CLASSE RESPONSAVEL PELO CALCULO
		@bhaskara = Bhaskara.new
		# EXECUTANDO O LOOP DA CALCULADORA
		calculadora
	end

	# PEGANDO OS CAMPOS A, B e C
	def set_campos
		@bhaskara.set_a
		@bhaskara.set_b
		@bhaskara.set_c
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

			# EXECUTANDO O GET DOS CAMPOS
			set_campos
			# RETORNANDO CALCULO
			puts @bhaskara.calc
			# LOOP SIM OU NAO
			puts "Sair? (s/n)"
			repeat = gets.chomp.to_s
			# LINUX => clear, WINDOWS => cls
			if repeat == 's' or repeat == 'S'
				# PARANDO A CALCULADORA
				system 'clear'
				@i +=1
			else
				# REPETINDO A CALC
				system 'clear'
			end
		end
	end
end

# CRIANDO O OBJ Init E RODANDO A CALCULADORA
init = Init.new