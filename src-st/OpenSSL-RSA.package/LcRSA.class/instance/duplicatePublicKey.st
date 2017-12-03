actions
duplicatePublicKey

	^ self class new
			handle: (LcLibCrypto current apiRsaPublicKeyDup: handle)
			yourself