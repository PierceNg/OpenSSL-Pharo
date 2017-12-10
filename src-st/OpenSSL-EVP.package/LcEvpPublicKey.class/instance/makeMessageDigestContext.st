private
makeMessageDigestContext

	mdCtx := LcLibCrypto current apiEvpMdCtxCreate.
	self errorIfNull: mdCtx.
	LcLibCrypto current apiEvpMdCtxInit: mdCtx.
	
