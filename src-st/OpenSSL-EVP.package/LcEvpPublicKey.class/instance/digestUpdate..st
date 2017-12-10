actions
digestUpdate: aByteArray

	self errorIfZeroOrNegative: 
		(LcLibCrypto current 
			apiEvpDigestUpdate: mdCtx 
			with: aByteArray
			with: aByteArray size)
			