tests
testDigest2
	| msg result |
	
	msg := 'message digest'.
	result := ByteArray readHexFrom: '5d0689ef49d2fae572b881b123a85ffa21595f36' readStream.
	self assert: (md hashMessage: msg) equals: result