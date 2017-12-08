actions
generateKey: numBits
	| bn |
	
	bn := LcBigNum new setWord: self class defaultExponent; yourself.	
	self errorIfZero: (LcLibCrypto current rsaGenerateKey: handle bitSize: numBits e: bn handle).

 