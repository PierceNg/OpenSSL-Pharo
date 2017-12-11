tests
test1
	| msg result |
	
	msg := 'abc'.
	result := ByteArray 
		fromHexString: 'ddaf35a193617aba cc417349ae204131 12e6fa4e89a97ea2 0a9eeee64b55d39a 2192992a274fc1a8 36ba3c23a3feebbd 454d4423643ce80e 2a9ac94fa54ca49f'.
	self assert: (md hashMessage: msg) equals: result.