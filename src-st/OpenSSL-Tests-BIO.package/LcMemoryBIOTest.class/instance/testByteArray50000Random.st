tests
testByteArray50000Random
	| s |
	
	s := ZnMessageBenchmark new randomBytes: 50000. 
	bio write: s.
	self assert: ((bio read: s size) = s)