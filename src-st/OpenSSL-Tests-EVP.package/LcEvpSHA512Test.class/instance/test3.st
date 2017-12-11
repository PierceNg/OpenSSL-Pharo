tests
test3
	| msg result |
	
	msg := 'abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq'.
	result := ByteArray 
		fromHexString: '204a8fc6dda82f0a 0ced7beb8e08a416 57c16ef468b228a8 279be331a703c335 96fd15c13b1b07f9 aa1d3bea57789ca0 31ad85c7a71dd703 54ec631238ca3445'.
	self assert: (md hashMessage: msg) equals: result.