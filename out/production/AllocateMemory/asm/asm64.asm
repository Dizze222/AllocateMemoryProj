.data
allocatedIds DWORD 8192 DUP(?) 
allocatedValues DWORD 8192 DUP(?) 
allocatedCount DWORD 0 

allocatedIdsBoolean DWORD 8192 DUP(?) 
allocatedValuesBoolean DWORD 8192 DUP(?) 
allocatedCountBoolean DWORD 0 



.code

;ecx - ID
;edx - new INT
editAllocatedBoolean PROC
	mov esi, ecx 
	mov ecx, [allocatedCountBoolean] 
	xor eax, eax 

findID:
	cmp [allocatedIdsBoolean + eax*4], esi
	je foundID
	inc eax
	loop findID
	mov eax, -1
	ret

foundID:
	mov [allocatedValuesBoolean + eax*4], edx
	mov eax, [allocatedValuesBoolean + eax*4]
	ret	

editAllocatedBoolean ENDP

; ecx - ID
; edx - INT
allocateBoolean PROC
	mov eax, [allocatedCountBoolean]
	mov [allocatedIdsBoolean + eax*4], ecx 
	mov [allocatedValuesBoolean + eax*4], edx 
	inc allocatedCountBoolean
	mov eax, edx
	ret
allocateBoolean ENDP


; ecx - ID
getAllocatedBoolean PROC
	mov esi, ecx 
	mov ecx, [allocatedCountBoolean] 
	xor eax, eax 

findID:
	cmp [allocatedIdsBoolean + eax*4], esi
	je foundID
	inc eax
	loop findID
	mov eax, -1
	ret

foundID:
	mov eax, [allocatedValuesBoolean + eax*4]
	ret
getAllocatedBoolean ENDP


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

;ecx - ID
;edx - new INT
editAllocatedInt PROC
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
	mov [allocatedValues + eax*4], edx
	mov eax, [allocatedValues + eax*4]
	ret	

editAllocatedInt ENDP

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