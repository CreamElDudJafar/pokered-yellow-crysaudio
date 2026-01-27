UpdateSprites::
	ld a, [wUpdateSpritesEnabled]
	dec a
	ret nz
	ld hl, hFlagsFFFA
	set 0, [hl]
	homecall _UpdateSprites
	ld hl, hFlagsFFFA
	res 0, [hl]
	ret
