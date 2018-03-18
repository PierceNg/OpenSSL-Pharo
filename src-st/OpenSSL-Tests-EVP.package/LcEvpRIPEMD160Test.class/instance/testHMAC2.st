tests
testHMAC2
	| msg result expectedResult |
	
	msg := 'what do ya want for nothing?'.
	key := 'Jefe' asByteArray.
	expectedResult := ByteArray readHexFrom: 'dda6c0213a485a9e24f4742064a7f033b43c4069' readStream.
	result := (HMAC on: LcEvpRIPEMD160)
		key: key;
		digestMessage: msg asByteArray.
	self assert: result equals: expectedResult