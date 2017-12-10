actions
digestSignInit
	| md |
	
	self errorIfNull: handle.
	
	mdCtx := LcLibCrypto current apiEvpMdCtxCreate.
	self errorIfNull: mdCtx.
	LcLibCrypto current apiEvpMdCtxInit: mdCtx.
	
	md := LcLibCrypto current apiEvpSHA256. 
	"This returns a static pointer within libcrypto.so, hence no error testing required."
	
	self errorIfZeroOrNegative: 
		(LcLibCrypto current 
			apiEvpDigestSignInit: mdCtx 
			with: LcEvpPkeyCtxForeign new
			with: md
			with: LcEngineForeign new 
			with: handle)
			