initialization
initialize

	handle := LcLibCrypto current apiEvpPkeyNew.
	self errorIfNull: handle