tests
testString
	| s |
	
	s := 'Hello OpenSSL from Pharo!'.
	bio putString: s.
	self assert: (bio getString = s)