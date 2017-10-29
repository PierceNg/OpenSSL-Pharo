testing
errorIfZero: retCode

	(retCode = 0) ifTrue: [ 
		LcError signal: (LcLibCrypto current apiErrorString: LcLibCrypto current apiGetError 
										into: (ExternalAddress new)) ]