tests
testDigestSignAndVerifyAscii8k
	| msg sig |
	
	msg := ZnMessageBenchmark new randomAsciiString: 8 * 1024.
	sig := pkey digestSignMessage: msg.
	self assert: (pkey digestVerifyMessage: msg with: sig)
	