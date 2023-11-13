.data
allocatedIds DWORD 512 DUP(?) 
allocatedValues DWORD 512 DUP(?) 
allocatedCount DWORD 0 

.code
; ecx - ID
; edx - INT
allocateInt PROC
	mov eax, [allocatedCount]
	mov [allocatedIds + eax*4], ecx 
	mov [allocatedValues + eax*4], edx 
	inc allocatedCount
	mov eax, edx
	ret
allocateInt ENDP


; ecx - ID
getAllocatedInt PROC
	mov esi, ecx 
	mov ecx, [allocatedCount] 
	xor eax, eax 

findID:
	cmp [allocatedIds + eax*4], esi
	je foundID
	inc eax
	loop findID
	mov eax, -1
	ret

foundID:
	mov eax, [allocatedValues + eax*4]
	ret
getAllocatedInt ENDP

end