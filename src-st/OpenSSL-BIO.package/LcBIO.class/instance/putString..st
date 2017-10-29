input/output
putString: aString
	^ LcLibCrypto current apiBioPuts: handle with: aString 