# Declaração das variáveis
.data
pula_linha:
	.string "\n" # Cria uma quebra de linha
# Seção de código
.text

main:
	li a7,5 # le um input no conlose
	ecall
	mv t1, a0 # Guarda o resultado do input no t1
	
	li a7, 5 # le um input no console
	ecall
	mv t2, a0 # Guarda o resultado do input no t2
	
	add t3, t1,t2 # Soma as duas entradas
	
	mv a0, t3 # Guarda o resultado de t3 no a0
	li a7, 1 # imprime o resultado inteiro
	ecall
	
	la a0, pula_linha # Carrega a str no registrador a0
	li a7,4 # Imprime a String
	ecall
	
	li a7, 10 # Fecha o programa
	ecall