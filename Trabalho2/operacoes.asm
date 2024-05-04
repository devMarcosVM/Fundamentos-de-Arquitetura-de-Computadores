# IMPLEMENTAR LÓGICAS ARITMÉTICAS E LÓGICAS BÁSICAS
# AUTOR: MARCOS VIEIRA MARINHO / 222021906

.data
msgadd:
	.string "ADD: "
msgsub:
	.string "SUB: "
msgand:
	.string "AND: "
msgor:
	.string "OR: "
msgxor:
	.string "XOR: "
msgmask:
	.string "MASK: "
msgsll:
	.string "SLL("
msgsrl:
	.string "SRL("
barra:
	.string "): "
pula_linha:
	.string "\n"
.text

main:
	# Pegando as entradas do terminal
	li a7, 5 
	ecall
	mv t0, a0 
	
	li a7, 5
	ecall
	mv t1, a0
		
	li a7, 5
	ecall
	mv t2, a0 
	
	# IMPRIMINDO A STRING
	la a0, msgadd
	li a7, 4
	ecall
	# ADD	
	add t3,t0,t1
	mv a0, t3
	li a7, 1
	ecall
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall 
	# IMPRIMINDO A STRING	
	la a0, msgsub
	li a7, 4
	ecall
	# SUB
	sub t3, t0, t1
	mv a0, t3
	li a7, 1
	ecall
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall 
	# IMPRIMINDO A STRING
	la a0, msgand
	li a7, 4
	ecall
	# AND
	and t3,t0,t1
	mv a0,t3
	li a7, 1
	ecall
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall #and
	# IMPRIMINDO A STRING
	la a0, msgor
	li a7, 4
	ecall
	# OR
	or t3,t0,t1
	mv a0, t3
	li a7, 1
	ecall
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall #or
	# IMPRIMINDO A STRING
	la a0, msgxor
	li a7, 4
	ecall
	# XOR
	xor t3,t0,t1
	mv a0, t3
	li a7, 1
	ecall
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall # xor
	# IMPRIMINDO A STRING
	la a0, msgmask
	li a7, 4
	ecall
	# MASK
	andi t3, t2, 31
	mv a0, t3
	li a7, 1
	ecall
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall 
	# IMPRIMINDO A STRING
	la a0, msgsll
	li a7, 4
	ecall
	
	# SLL
	mv a0, t3
	li a7, 1
	ecall
	la a0, barra
	li a7, 4
	ecall
	
	sll t4, t0, t3
	mv a0, t4
	li a7, 1
	ecall
	# IMPRIME QUEBRA DE LINHA
	la a0, pula_linha
	li a7, 4
	ecall
	
	# IMPRIMINDO A STRING
	la a0, msgsrl
	li a7, 4
	ecall
	# SRL
	mv a0, t3
	li a7, 1
	ecall
	la a0, barra
	li a7, 4
	ecall
	
	mv a0, t3
	srl t4, t1, a0
	mv a0, t4
	li a7, 1
	ecall
	la a0, pula_linha
	li a7, 4
	ecall
	
	li a7, 10
	ecall
	
