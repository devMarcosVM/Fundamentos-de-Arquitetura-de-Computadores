
# Operandos

## Localização física no computador

* Registradores
* Memória
* Constantes ( os imediatos)

RISCV tem 32 registros de 32 bits, são mais rápidos do que a memória. O RISC-V é conhecida como "arquitetura de 32 bits" porque opera com dados de 32 bits. RISC-V inclui somete um pequeno número número de registradores.

## RISC-V REGISTER SET

|Name|Register| NumberUsage|
|--|--|--|
|zero|x0|Constant value 0|
|ra|x1|Return address|
|sp|x2|Stack pointer|
|gp|x3|Global pointer|
|tp|x4|Thread pointer|
|t0-2|x5­-7|Temporaries|
|s0/fp|x8|Saved register / Frame pointer|
|s1|x9|Saved register|
|a0-1|x10­-11|Function arguments / return values|
|a2-7|x12-­17|Function arguments|
|s2-11|x18-­27|Saved registers|
|t3-6|x28­-31|Temporaries|

## Operar com registradores

– Pode usar qualquer nome (ou seja, ra, zero) ou x0, x1,
etc.

– Usar o nome é preferível

--> Registros utilizados para fins específicos:

* zero sempre mantém o valor constante 0.
* os registros salvos, s0-s11, usados para armazenar
variáveis
* os registros temporários, t0-t6, usados para
manter valores intermediários durante um período maior
computação

# Instruções Para Operações

* "#" indicates a single­line comment

## Adição com registradores

C code

```C code
a = b + c;
```

Assembly Code

```Assembly
# s0 = a, s1 = b, s2 = c
add s0, s1, s2
```

# Operadores de Memória

* Muitos dados para agrupar em somente 32 registradores.
* Armazena mais dados na memória.
* Memória é maior, mas lenta
* Váriaveis comumente usadas continuam mantidas em registradores

## Paravra Com Endereço na Memória

Cada palavra de dados de 32 bits possui um único
endereço.

* A leitura de mémoria é chamada de load (carregamento)
* Minemônico: load word (lw)
* Format:

``` Assembly
lw t1, 5(s0)
lw destination, offset(base)
```

* Calculo de Endereço

```Text
Adiciona endereço de base (s0) para o offset(5)
endereço = (s0 + 5)
```

* Resultado:

-T1 segura o valor do dado no endereço (s0 + 5)
-Algum registrador pode ser usado como base de endereço
