;entete
extrn lirent:proc, ecrent:proc
extrn ecrbool:proc
extrn ecrch:proc, ligsuiv:proc
.model SMALL
.586

.CODE
debut:
	STARTUPCODE

	;ouvrePrinc 10
	mov bp,sp
	sub sp,10

	;iconst 1
	push word ptr 1

	;istore -6
	pop ax
	mov word ptr [bp-6],ax

	;iconst 1
	push word ptr 1

	;istore -8
	pop ax
	mov word ptr [bp-8],ax

FAIRE1:
	;iconst -1
	push word ptr -1

	;iffaux FAIT1
	pop ax
	cmp ax,0
	je FAIT1

	;iload -2
	push word ptr [bp-2]

	;iconst 40
	push word ptr 40

	;iegal
	pop bx
	pop ax
	cmp ax,bx
	jne $+6
	push -1
	jmp $+4
	push 0

	;iload -6
	push word ptr [bp-6]

	;iconst 0
	push word ptr 0

	;isup
	pop bx
	pop ax
	cmp ax,bx
	jle $+6
	push -1
	jmp $+4
	push 0

	;iand
	pop bx
	pop ax
	and ax,bx
	push ax

	;iffaux SINON1
	pop ax
	cmp ax,0
	je SINON1

	;iload -6
	push word ptr [bp-6]

	;iconst 1
	push word ptr 1

	;ineg
	pop bx
	mov ax,0
	sub ax,bx
	push ax

	;imul
	pop bx
	pop ax
	imul bx
	push ax

	;istore -6
	pop ax
	mov word ptr [bp-6],ax

	;goto FSI1
	jmp FSI1
SINON1:
FSI1:
	;iload -2
	push word ptr [bp-2]

	;iconst 0
	push word ptr 0

	;iegal
	pop bx
	pop ax
	cmp ax,bx
	jne $+6
	push -1
	jmp $+4
	push 0

	;iload -6
	push word ptr [bp-6]

	;iconst 0
	push word ptr 0

	;iinf
	pop bx
	pop ax
	cmp ax,bx
	jge $+6
	push -1
	jmp $+4
	push 0

	;iand
	pop bx
	pop ax
	and ax,bx
	push ax

	;iffaux SINON2
	pop ax
	cmp ax,0
	je SINON2

	;iload -6
	push word ptr [bp-6]

	;iconst 1
	push word ptr 1

	;ineg
	pop bx
	mov ax,0
	sub ax,bx
	push ax

	;imul
	pop bx
	pop ax
	imul bx
	push ax

	;istore -6
	pop ax
	mov word ptr [bp-6],ax

	;goto FSI2
	jmp FSI2
SINON2:
FSI2:
	;iload -4
	push word ptr [bp-4]

	;iconst 14
	push word ptr 14

	;iegal
	pop bx
	pop ax
	cmp ax,bx
	jne $+6
	push -1
	jmp $+4
	push 0

	;iload -8
	push word ptr [bp-8]

	;iconst 0
	push word ptr 0

	;isup
	pop bx
	pop ax
	cmp ax,bx
	jle $+6
	push -1
	jmp $+4
	push 0

	;iand
	pop bx
	pop ax
	and ax,bx
	push ax

	;iffaux SINON3
	pop ax
	cmp ax,0
	je SINON3

	;iload -8
	push word ptr [bp-8]

	;iconst 1
	push word ptr 1

	;ineg
	pop bx
	mov ax,0
	sub ax,bx
	push ax

	;imul
	pop bx
	pop ax
	imul bx
	push ax

	;istore -8
	pop ax
	mov word ptr [bp-8],ax

	;goto FSI3
	jmp FSI3
SINON3:
FSI3:
	;iload -4
	push word ptr [bp-4]

	;iconst 0
	push word ptr 0

	;iegal
	pop bx
	pop ax
	cmp ax,bx
	jne $+6
	push -1
	jmp $+4
	push 0

	;iload -8
	push word ptr [bp-8]

	;iconst 0
	push word ptr 0

	;iinf
	pop bx
	pop ax
	cmp ax,bx
	jge $+6
	push -1
	jmp $+4
	push 0

	;iand
	pop bx
	pop ax
	and ax,bx
	push ax

	;iffaux SINON4
	pop ax
	cmp ax,0
	je SINON4

	;iload -8
	push word ptr [bp-8]

	;iconst 1
	push word ptr 1

	;ineg
	pop bx
	mov ax,0
	sub ax,bx
	push ax

	;imul
	pop bx
	pop ax
	imul bx
	push ax

	;istore -8
	pop ax
	mov word ptr [bp-8],ax

	;goto FSI4
	jmp FSI4
SINON4:
FSI4:
	;iload -2
	push word ptr [bp-2]

	;iload -6
	push word ptr [bp-6]

	;iadd
	pop bx
	pop ax
	add ax,bx
	push ax

	;istore -2
	pop ax
	mov word ptr [bp-2],ax

	;iload -4
	push word ptr [bp-4]

	;iload -8
	push word ptr [bp-8]

	;iadd
	pop bx
	pop ax
	add ax,bx
	push ax

	;istore -4
	pop ax
	mov word ptr [bp-4],ax

	;iload -4
	push word ptr [bp-4]

	;istore -10
	pop ax
	mov word ptr [bp-10],ax

FAIRE2:
	;iload -10
	push word ptr [bp-10]

	;iconst 0
	push word ptr 0

	;isup
	pop bx
	pop ax
	cmp ax,bx
	jle $+6
	push -1
	jmp $+4
	push 0

	;iffaux FAIT2
	pop ax
	cmp ax,0
	je FAIT2

	;aLaLigne
	call ligsuiv

	;iload -10
	push word ptr [bp-10]

	;iconst 1
	push word ptr 1

	;isub
	pop bx
	pop ax
	sub ax,bx
	push ax

	;istore -10
	pop ax
	mov word ptr [bp-10],ax

	;goto FAIRE2
	jmp FAIRE2
FAIT2:
	;iload -2
	push word ptr [bp-2]

	;iconst 2
	push word ptr 2

	;isub
	pop bx
	pop ax
	sub ax,bx
	push ax

	;istore -10
	pop ax
	mov word ptr [bp-10],ax

	;ecrireChaine "|"
.DATA
mess0 DB "|$"
.CODE
	lea dx,mess0
	push dx
	call ecrch

FAIRE3:
	;iload -10
	push word ptr [bp-10]

	;iconst 0
	push word ptr 0

	;isup
	pop bx
	pop ax
	cmp ax,bx
	jle $+6
	push -1
	jmp $+4
	push 0

	;iffaux FAIT3
	pop ax
	cmp ax,0
	je FAIT3

	;ecrireChaine " "
.DATA
mess1 DB " $"
.CODE
	lea dx,mess1
	push dx
	call ecrch

	;iload -10
	push word ptr [bp-10]

	;iconst 1
	push word ptr 1

	;isub
	pop bx
	pop ax
	sub ax,bx
	push ax

	;istore -10
	pop ax
	mov word ptr [bp-10],ax

	;goto FAIRE3
	jmp FAIRE3
FAIT3:
	;ecrireChaine "o"
.DATA
mess2 DB "o$"
.CODE
	lea dx,mess2
	push dx
	call ecrch

	;iconst 65500
	push word ptr 65500

	;istore -10
	pop ax
	mov word ptr [bp-10],ax

FAIRE4:
	;iload -10
	push word ptr [bp-10]

	;iconst 0
	push word ptr 0

	;isup
	pop bx
	pop ax
	cmp ax,bx
	jle $+6
	push -1
	jmp $+4
	push 0

	;iffaux FAIT4
	pop ax
	cmp ax,0
	je FAIT4

	;iload -10
	push word ptr [bp-10]

	;iconst 1
	push word ptr 1

	;isub
	pop bx
	pop ax
	sub ax,bx
	push ax

	;istore -10
	pop ax
	mov word ptr [bp-10],ax

	;goto FAIRE4
	jmp FAIRE4
FAIT4:
	;goto FAIRE1
	jmp FAIRE1
FAIT1:
	;queue
	nop
	EXITCODE
	end debut
