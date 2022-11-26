# Модификация

Код был модифицирован про помощи команды
>     gcc -masm=intel 
>     -fno-asynchronous-unwind-tables
>     -fno-jump-tables
>     -fno-stack-protector 
>     -fno-exceptions 
>     -fverbose-asm 
>     ./file.c -S -o ./file_mod.s
После чего все файлы были отредактированы вручную:

1. Из всех файлов удалены cdqe;
2. Из всех файлов удалены все строки после 
   ```.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0```
   <br> за ненадобностью;
3. Удалены лишние переприсваивания - они перечислены в конце файла.

## Удалённые переприсваивания
### main_mod.s
<br> Было:
``` assembly
  movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
```
<br>Стало:
``` assembly
  movq   QWORD PTR -8[rbp], xmm0
```
