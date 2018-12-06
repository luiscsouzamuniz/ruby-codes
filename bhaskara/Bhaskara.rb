# UTILIZANDO O CMATH PARA RAIZ QUADRADA
require "cmath"
# Classe de cálculo da equação de segundo grau
# Author: Luis Carlos
# date: 2018-12-05
class Bhaskara
	
	# CARREGANDO A CLASSE BHASKARA
	def initialize()
		# CARREGANDO TODAS AS VARIAVEIS DE INSTANCIA DA CLASSE	
		@a = ''
		@b = ''
		@c = ''
	end
	
	def calc
		# EXECUTANDO OS METODOS DELTA, X1 e X2
		delta # def delta
		x1    # def x1
		x2    # def x2

		# RETORNANDO VALOR
		# #{} PARA INSERIR O VALOR DA VARIAVEL
		# OU METODO PARA O RETORNO. PHP => "$variavel"
		"O resultado é X1: #{x1} && X2: #{x2}"
	end

	# METODO DE CALCULO DO DELTA
	def delta 
		# RETORNANDO CALCULO
		calc_delta = (@b**2) - (4*@a*@c)
	end

	# METODO DE CALCULO DO X1
	def x1
		# RETORNANDO CALCULO
		x1 = (-@b + CMath.sqrt(delta))/(2*@a)
	end

	# METODO DE CALCULO DO X2
	def x2
		# RETORNANDO CALCULO
		x2 = (-@b - CMath.sqrt(delta))/(2*@a)
	end
	# SETAR VARIAVEIS @a, @b, @c do def initialize
	# O .chomp É PARA RETIRAR O /n QUE VEM POR PADRÃO AO
	# INSERIR UM VALOR => a = "meu nome/n"
	# O .to_i É PARA DECLARAR QUE O VALOR RECEBIDO VAI SER NÚMERO INTEIRO 
	# [to_i => integer, to_s => string, to_f => float]. 
	# gets é para receber um valor.
	def set_a
		# SETANDO VALORES
		puts "Digite o Valor de A:"
		@a = gets.chomp.to_i
	end

	def set_b
		# SETANDO VALORES
		puts "Digite o Valor de B:"
		@b = gets.chomp.to_i
	end

	def set_c
		# SETANDO VALORES
		puts "Digite o Valor de C:"
		@c = gets.chomp.to_i
	end
	
end