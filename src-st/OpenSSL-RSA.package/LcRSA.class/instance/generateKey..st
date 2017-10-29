actions
generateKey: numBits
	| bn |
	
	bn := LcBigNum new setWord: 65537; yourself.
	
	self flag: #XXX. "Check for error!"
	^ LcLibCrypto current rsaGenerateKey: handle bitSize: numBits e: bn handle
 