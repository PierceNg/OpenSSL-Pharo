actions
duplicate
	
	^ self class new
			handle: (LcLibCrypto current apiRsaPrivateKeyDup: handle)
			yourself