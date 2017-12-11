private - API - EVP
evpDigestUpdate: aByteArray with: mdCtx

	self errorIfZero: 
		(LcLibCrypto current 
			apiEvpDigestUpdate: mdCtx 
			with: aByteArray
			with: aByteArray size)