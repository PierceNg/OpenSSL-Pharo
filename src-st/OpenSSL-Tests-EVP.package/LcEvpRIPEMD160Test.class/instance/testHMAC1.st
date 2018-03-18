tests
testHMAC1
	| msg result expectedResult |
	
	msg := 'Hi There'.
	key := ByteArray readHexFrom: '0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b' readStream.
	expectedResult := ByteArray readHexFrom: '24cb4bd67d20fc1a5d2ed7732dcc39377f0a5668' readStream.
	result := (HMAC on: LcEvpRIPEMD160)
		key: key;
		digestMessage: msg asByteArray.
	self assert: result equals: expectedResult