tests
test2
	| msg result |
	
	msg := ''.
	result := ByteArray 
		fromHexString: 'cf83e1357eefb8bd f1542850d66d8007 d620e4050b5715dc 83f4a921d36ce9ce 47d0d13c5d85f2b0 ff8318d2877eec2f 63b931bd47417a81 a538327af927da3e'.
	self assert: (md hashMessage: msg) equals: result.