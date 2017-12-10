actions
digestVerifyFinal: messageByteArray with: signatureByteArray
	| ret |
	
	ret := LcLibCrypto current 
		apiEvpDigestVerifyFinal: mdCtx 
		with: signatureByteArray 
		with: signatureByteArray size.
	^ (ret = 1)
			