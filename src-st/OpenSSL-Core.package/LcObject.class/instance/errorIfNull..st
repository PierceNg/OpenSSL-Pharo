testing
errorIfNull: aHandle

	aHandle isNull ifTrue: [ 
		LcError signal: (LcLibCrypto current apiErrorString: LcLibCrypto current apiGetError 
										into: (ExternalAddress new)) ]