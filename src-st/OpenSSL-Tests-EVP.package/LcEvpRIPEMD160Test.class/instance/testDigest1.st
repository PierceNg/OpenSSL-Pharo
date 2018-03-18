tests
testDigest1
	| msg result |
	
	msg := ''.
	result := ByteArray readHexFrom: '9c1185a5c5e9fc54612808977ee8f548b2258d31' readStream.
	self assert: (md hashMessage: msg) equals: result