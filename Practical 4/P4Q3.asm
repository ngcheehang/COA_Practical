INCLUDE Irvine32.inc



.data
PROMPT1 DB "In english : You like english and espresso, excellent !",0
PROMPT2 DB ?
.code
main proc
	mov edx, OFFSET PROMPT1
	call WriteString
	call Crlf
	mov esi,0
	mov edi,0
	mov ecx,100

start:
	mov al,PROMPT1[esi]
	cmp PROMPT1[esi],65h
	je change
	mov PROMPT2[edi],al
	inc esi
	inc edi
	loop start
	mov edx, OFFSET PROMPT2
	call WriteString
	call Crlf
	exit

change :
    mov al,"e"
	mov PROMPT2[edi],al
	inc edi
	mov al,"g"
	mov PROMPT2[edi],al
	inc edi
	mov al,"g"
	mov PROMPT2[edi],al
	inc edi
	inc esi
	jmp start

main ENDP
end main