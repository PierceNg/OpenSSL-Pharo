tests
testRsaPemString2
	| s |

	s := LcRSATest rsaPemString1024.	
	bio := LcMemoryBIO fromString: s.
	self assert: ((bio read: s size) asString = s)