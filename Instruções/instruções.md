# Instruções Para Operações

* "#" indicates a single­line comment

## Adição (usando registradores)

C code

```C code
a = b + c;
```

Assembly Code

```Assembly
# s0 = a, s1 = b, s2 = c
add s0, s1, s2
```

## Adição com constante

C code

```C code
a = b + 6;
```

Assembly Code

```Assembly
# s0 = a, s1 = b
addi s0, s1, 6
```

## Subtração

C code

```C code
a = b - c;
```

Assembly Code

```Assembly
sub a, b, c
```

## Multiple Instructions

C code

```C code
a = b + c - d;
```

Assembly Code

```Assembly
add t, b, c # t = b + c
sub a, t, d # a = t - d
```

## Multiplicação

* 32 x 32 -> resulta em 64 bits

``` Assembly
mul s3, s1, s2
    s3 = diminui 32 bits do resultado
mul s4, s1, s2
    s4 = aumenta 32 bits do resultado
{s4,s3} = s1 x s2
```

## Divisão

* 32-bit na divisão -> 32-bit no quociente ou sobra

``` Assembly
div s3, s1, s2 # s3 = s1/s2
rem s4, s1, s2 # s4 = s1%s2
```

## Branches (ramificação)

* Executa Funções fora da sequência
* Tipos de Branches:

|Coditional|Unconditional|
|----------|-------------|
|branch if equal (beq)|jump(j)|
|branch if not equal (bne) | jump register (jr) |
|branch if less than (blt)|jump and link (jal)|
|branch if greater than or equal (bge)|jump and link register(jalr)|
