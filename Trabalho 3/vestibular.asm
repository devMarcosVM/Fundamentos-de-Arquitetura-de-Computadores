# Declaração das variáveis
.data
    pula_linha: .string "\n"
    gabarito: .space 1000 
    respostas: .space 1000  

.text

main:
	li a7, 5 # Leitura do número de questões
	ecall 
	mv t0, a0 
	
	beq t0, x0, fim
	
	addi t0, t0, 1  # Incrementa t0 em 1 para ler a quantidade certa
	addi t1, zero, 0  # Inicializa t1
    	addi t2, zero, 0  # Inicializa t2 
	
	la a0, gabarito  # Carrega o endereçõ na memoria
    	mv a1, t0  # tamanho máximo
    	li a7, 8  # Leitura da entrada padrao
	ecall  
	
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall 
	
	la a0, respostas  # Carrega o endereço da primeira string em a0
    	mv a1, t0  # Define o tamanho máximo da string
    	li a7, 8  # Código da chamada de sistema para ler da entrada padrão
	ecall  
	
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall 
	
	la t3, gabarito  # Carrega o endereço em t3
    	la t4, respostas  # Carrega o endereço em t4
    	
   loop:
   	bgt t2, t0, fim #um loop de 1 ao numero de questões, btg vai dar verdadeiro quando t2 = t0
   		
   	#comparação byte a byte
   	lb t5, 0(t3) 
   	lb t6, 0(t4) 
   	
   	beqz t5, fim  # Encerra o loop se o caractere da primeira string for nulo ('\0')
   	beqz t6, fim  # Encerra o loop se o caractere da segunda string for nulo ('\0')
   	
   	beq t5, t6, ehigual  # Se os caracteres forem iguais, vai para a etiqueta "ehigual"
   
   	j atualiza # loop
   	
   ehigual:
   	addi t1, t1, 1 #soma um ao contador de acertos 
   	j atualiza
   	
   atualiza:
   	addi t3, t3, 1
   	addi t4, t4, 1 
   	addi t2, t2, 1 
   	
   	j loop
   	
   fim:
   	#IMPRIME O RESULTADO
   	mv a0, t1 
   	li a7,1 
   	ecall
   	
   	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall 
   	
   	li a7, 10 #fecha o programa
   	
   	