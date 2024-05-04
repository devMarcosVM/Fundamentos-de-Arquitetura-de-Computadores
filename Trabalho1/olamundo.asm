.data # Definimos aqui a seçao de dados do programa
mensagem:
	.asciz  "Ola Mundo\n" #o asciz indica que a string termina com caractere nulo
.text

main:
	la a0, mensagem	# Carrega o endereço da string "Ola Mundo " no registrador a0
	li a7, 4 # Definimos o valor  4 no registrador a7, indicando que queremos realizar uma chamada no sistema para imprimir a string
	ecall
	
	li a0,0 # Definimos o valor 0 no registrador a0
	li a7,10 # Definimos o valor 10 no registrador a7, que é o código para encerrar o programa
	ecall
