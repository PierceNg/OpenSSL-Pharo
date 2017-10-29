tests
testByteArray
	| s |
	
	s := 'Hello OpenSSL from Pharo!' asByteArray.
	bio write: s.
	self assert: ((bio read: s size) = s)