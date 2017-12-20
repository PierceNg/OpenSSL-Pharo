tests
test1
	| msg result |
	
	msg := 'abc'.
	result := ByteArray 
		readHexFrom: 'ddaf35a193617abacc417349ae20413112e6fa4e89a97ea20a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e2a9ac94fa54ca49f' readStream.
	self assert: (md hashMessage: msg) equals: result.