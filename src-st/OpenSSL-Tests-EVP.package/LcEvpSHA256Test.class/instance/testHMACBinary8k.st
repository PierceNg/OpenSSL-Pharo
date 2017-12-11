tests
testHMACBinary8k
	| msg st c |
	
	msg := ZnMessageBenchmark new randomBytes: 8 * 1024.
	st := (HMAC on: SHA256)
		key: key;
		digestMessage: msg asByteArray.
	c := (HMAC on: LcEvpSHA256)
		key: key;
		digestMessage: msg asByteArray.
	self assert: (st = c)