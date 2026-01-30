UpdateCGBPal_BGP::
	push af
	ld a, [hCGB]
	and a
	jr z, .notCGB
	push bc
	push de
	push hl
	ld a, [rBGP]
	ld b, a
	ld a, [wLastBGP]
	cp b
	jr z, .noChangeInBGP
	farcall _UpdateCGBPal_BGP
.noChangeInBGP
	pop hl
	pop de
	pop bc
.notCGB
	pop af
	ret
	
UpdateCGBPal_OBP0::
	push af
	ld a, [hCGB]
	and a
	jr z, .notCGB
	push bc
	push de
	push hl
	ld a, [rOBP0]
	ld b, a
	ld a, [wLastOBP0]
	cp b
	jr z, .noChangeInOBP0
	ld d, CONVERT_OBP0
	farcall _UpdateCGBPal_OBP
.noChangeInOBP0
	pop hl
	pop de
	pop bc
.notCGB
	pop af
	ret
	
UpdateCGBPal_OBP1::
	push af
	ld a, [hCGB]
	and a
	jr z, .notCGB
	push bc
	push de
	push hl
	ld a, [rOBP1]
	ld b, a
	ld a, [wLastOBP1]
	cp b
	jr z, .noChangeInOBP1
	ld d, CONVERT_OBP1
	farcall _UpdateCGBPal_OBP
.noChangeInOBP1
	pop hl
	pop de
	pop bc
.notCGB
	pop af
	ret

Func_3082::
	ldh a, [hLoadedROMBank]
	push af

	call UpdateSound
;	call FadeOutAudio
;	ld a, BANK(Music_DoLowHealthAlarm)
;	call BankswitchCommon
;	call Music_DoLowHealthAlarm
;	ld a, BANK(Audio1_UpdateMusic)
;	call BankswitchCommon
;	call Audio1_UpdateMusic

	pop af
	call BankswitchCommon
	ret