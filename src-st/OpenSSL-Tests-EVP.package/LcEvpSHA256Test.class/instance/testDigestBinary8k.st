tests
testDigestBinary8k
	| msg |
	
	msg := ZnMessageBenchmark new randomBytes: 8 * 1024.
	self assert: (md hashMessage: msg) = (SHA256 hashMessage: msg)