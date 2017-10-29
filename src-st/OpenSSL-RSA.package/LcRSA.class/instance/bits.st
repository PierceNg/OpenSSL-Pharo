accessing
bits
	| s |
	
	s := LcLibCrypto current apiRsaSize: handle.
	^ 8 * s