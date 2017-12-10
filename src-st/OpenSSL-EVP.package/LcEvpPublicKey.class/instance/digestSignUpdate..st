actions
digestSignUpdate: aByteArray

	self errorIfZeroOrNegative: 
		(LcLibCrypto current 
			apiEvpDigestSignUpdate: mdCtx 
			with: aByteArray
			with: aByteArray size)
			