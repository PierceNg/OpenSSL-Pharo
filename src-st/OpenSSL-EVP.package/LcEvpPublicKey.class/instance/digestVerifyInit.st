actions
digestVerifyInit
	| md |
	
	self errorIfNull: handle.
	mdCtx := LcLibCrypto current makeDigestContext.	
	md := LcLibCrypto current apiEvpSHA256. 
	
	self errorIfZeroOrNegative: 
		(LcLibCrypto current 
			apiEvpDigestVerifyInit: mdCtx 
			with: LcEvpPkeyCtxForeign new
			with: md
			with: LcEngineForeign new 
			with: handle)
			