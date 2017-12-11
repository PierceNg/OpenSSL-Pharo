tests
testDigestAscii8k
	| msg |
	
	msg := ZnMessageBenchmark new randomAsciiString: 8 * 1024.
	self assert: (md hashMessage: msg) = (SHA256 hashMessage: msg)