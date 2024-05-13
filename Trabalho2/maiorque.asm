.data 
quebra:
	.string "\n"
.text

main: 
	li a7, 5 # Leitura do número de entradas que o sistema vai receber
	ecall
	mv t0, a0 # Movemos ao para t0
		
	li a7, 5 # Leitura da primeira entrada 
	ecall 
	mv t1, a0
	
	addi t0,t0,-1 # O número de t0 decresce por conta de uma entrada já ser lida

maiorque:
	beqz t0, stop # Quando t0 foir 0, o sistema irá pular para stop
	
	li a7,5 # leitura de todas as entradas seguintes
	ecall
	mv t2,a0
	
	bge t2,t1, move # Identificação de uma entrada maior que a outra, se verdadeiro pula para move
	j continue # pula para continue
	
	
move:
	mv t1,t2 # Dá o valor de t2 à t1
	j continue # oula para continue

continue:
	addi t0,t0,-1 # Como foi recebido uma entrada, aqui diminuimos um da quantidade total de entradas
	j maiorque # pula para o loop maiorque

stop:
	mv a0,t1 # Trazemos t1 ao registrador a0
	li a7,1 # Imprime o registraador a0
	ecall
	
	la a0,quebra # Colocamos a string "quebra" ao registrador a0
	li a7,4 # Imprime a String
	ecall
	
	li a7,10 # Aqui o programa se encerra
	ecall