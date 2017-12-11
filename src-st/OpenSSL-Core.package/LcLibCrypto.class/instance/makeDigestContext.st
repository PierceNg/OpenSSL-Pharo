private - API - EVP
makeDigestContext
	| mdCtx |
	
	mdCtx := LcLibCrypto current apiEvpMdCtxCreate.
	self errorIfNull: mdCtx.
	LcLibCrypto current apiEvpMdCtxInit: mdCtx.
	^ mdCtx