tests
test3
	| msg result |
	
	msg := 'abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq'.
	result := ByteArray 
		readHexFrom: '204a8fc6dda82f0a0ced7beb8e08a41657c16ef468b228a8279be331a703c33596fd15c13b1b07f9aa1d3bea57789ca031ad85c7a71dd70354ec631238ca3445' readStream.
	self assert: (md hashMessage: msg) equals: result.