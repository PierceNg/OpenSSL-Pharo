actions
generateKey: numBits
	| bn |
	
	bn := LcBigNum new setWord: 65537; yourself.	
	self errorIfZero: (LcLibCrypto current rsaGenerateKey: handle bitSize: numBits e: bn handle).

 