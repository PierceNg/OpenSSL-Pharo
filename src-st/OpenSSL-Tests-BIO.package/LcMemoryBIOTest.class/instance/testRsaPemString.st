tests
testRsaPemString
	| s |
	
	s := LcRSATest rsaPemString1024 asByteArray.
	bio write: s.
	self assert: ((bio read: s size) = s)