Include Irvine32.inc

.data

string byte "ABCDEFGHIJKLMNOPQRSTUVWXYZ",0				; initializing string 
char byte "O"											; character to be skipped

.code
main proc
	
	mov ecx, lengthof string							; moving length of string ecx
	mov esi, offset string								; strong the adress of first element of string in esi
L1:														; loop 1 for converting alphabets
	
	mov al, byte ptr [esi]								; moving the alphabets in al
	cmp al,char											; comparing the alphabet to be skipped with alphabet in al

	je L2												; if the alphabets are equal than it will skip the conversion part

	OR al, 00100000b									; oring the alphabets to convert them in upper case letters
	call writechar										; printing them on screen

	L2:													; if the alphabet is equal then only this part wil be executed

	inc esi												; incrementing the address so that is move to the next element of string
	loop L1												; calling loop 1 again
	exit												; termination

main ENDP
END main