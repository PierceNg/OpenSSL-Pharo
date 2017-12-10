actions
digestVerifyInit
	| md |
	
	self errorIfNull: handle.
	self makeMessageDigestContext.	
	md := LcLibCrypto current apiEvpSHA256. 
	
	self errorIfZeroOrNegative: 
		(LcLibCrypto current 
			apiEvpDigestVerifyInit: mdCtx 
			with: LcEvpPkeyCtxForeign new
			with: md
			with: LcEngineForeign new 
			with: handle)
			