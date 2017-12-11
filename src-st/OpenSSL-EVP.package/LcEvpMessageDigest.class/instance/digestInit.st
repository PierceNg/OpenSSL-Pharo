actions
digestInit
	
	self errorIfNull: handle.
	mdCtx := LcLibCrypto current makeDigestContext.	
	
	self errorIfZero: 
		(LcLibCrypto current 
			apiEvpDigestInit: mdCtx 
			with: handle)