tests
testByteArray3000Random
	| s |
	
	s := ZnMessageBenchmark new randomBytes: 3000. 
	bio write: s.
	self assert: ((bio read: s size) = s)