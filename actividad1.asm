#Ejercicio 1:
	.data
dato: 	.byte 3 #inicializo una posición de memoria a 3
 	.text
	.globl main # debe ser global
main: lw $t0,dato($0)


#Ejercicio 2:
.data 0x10000000

A: .space 80
B: .space 80


#Ejercicio 3:
.data 0x10001000

palabra: .space 4
byte: .space 1
.align 4
palabra2: .space 4


#Ejercicio 4:
.data 

palabra: .word 3
byte1: .byte 0x10

.align 4
4bytes: .space 4
.align 1
byte2: .byte 20

#Ejercicio 5:
.data 

ascii: .ascii "Esto es un problema"
word: .word 0x45, 0x73, 0x74, 0x6F, 0x20, 0x65, 0x73, 0x20, 0x75, 0x6E, 0x20, 0x70, 0x72 , 0x6F, 0x62, 0x6C , 0x65, 0x6D, 0x61
byte: .byte  0x45, 0x73, 0x74, 0x6F, 0x20, 0x65, 0x73, 0x20, 0x75, 0x6E, 0x20, 0x70, 0x72 , 0x6F, 0x62, 0x6C , 0x65, 0x6D, 0x61


#Ejercicio 6:
.data 

filas: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
columnas: .word 1, 4, 7, 2, 5, 8, 3, 6, 9


#Ejercicio 7:
.data 0x10000000

ints: .word 10, 20, 25, 500, 3

.text

main:
 
la $t1, ints

lw $s0, 0($t1)
lw $s1, 4($t1)
lw $s2, 8($t1)
lw $s3, 12($t1)
lw $s4, 16($t1)

#Ejercicio 8:
.data 0x10010000

ints: .word 10, 20, 25, 500, 3

.text

main:
 
la $t1, ints

lw $t0, 0($t1)
sw $t0, 0x10010000($t1)

lw $t0, 4($t1)
sw $t0, 0x10010004($t1)

lw $t0, 8($t1)
sw $t0, 0x10010008($t1)

lw $t0, 12($t1)
sw $t0, 0x1001000c($t1)

lw $t0, 16($t1)
sw $t0, 0x10010010($t1)

#Ejercicio 9:
.data

palabra: .word 0x10203040
posicion: .word 0x00001000

.text

main:

la $t1, palabra
lw $t2, posicion

lb $s0, 0($t1)
lb $s1, 1($t1)
lb $s2, 2($t1)
lb $s3, 3($t1)

sb $s3, 0($t2)
sb $s2, 1($t2)
sb $s1, 2($t2)
sb $s0, 3($t2)

#Ejercicio 10:

.data 0x10000000

palabra: .word 0x10203040

.text

main:

la $t1, 0(palabra)

lh $s0, 0($t1)
lh $s1, 2($t1)

sh $s1, 0($t1)
sh $s0, 2($t1)

#Ejercicio 11:
.data 0x10010002

byte1: .byte 0x10
byte2: .byte 0x20
byte3: .byte 0x30
byte4: .byte 0x40

.data 0x10010100
direccion: .space 4

.text
lb $s0, byte1
lb $s1, byte2
lb $s2, byte3
lb $s3, byte4

la $t1, direccion

sb $s0, 3($t1)
sb $s1, 2($t1)
sb $s2, 1($t1)
sb $s3, 0($t1)

#Ejercicio 12:
.data 0x10000000

vector: .word 10, 20

rta: .space 1

.text

la $t0, vector
lw $s0, 0($t0)
lw $s1, 4($t0)

add $s2, $s0, $s1

la $s3, rta
sb $s2, 0($s3)



#Ejercicio 13:
.data 0x1000000
num1: .word 18
num2: .word -1215
divisor: .word 5

cociente: .word 0x10010000

.text
main:

lw $t0, num1
lw $t1, num2
lw $t2, divisor

div $t4, $t0, $t2
div $t5, $t1, $t2

div $t6, $t5, $t4

sw $t6, cociente

#Ejercicio 14:
.data 0x10000000
palabra: .word 0xabcd12bd
.text
main:
lw $t1, palabra

andi $t1, $t1, 0xDD7FFFFF

#Ejercicio 15:
.data 0x10000000
palabra: .word 0xff0f1235
.text
main:
lw $t1, palabra

andi $t1, $t1, 0xDD7FFFFF

#Ejercicio 16:
.data 0x10000000
palabra: .word 0x1237

.text
main:
lw $t1, palabra
sll $t1, $t1, 5