_Start::
	cp BOOTUP_A_CGB
	jr z, .cgb
	xor a
	jr .ok
.cgb
	ld a, TRUE
.ok
	ldh [hCGB], a
	jp Init
