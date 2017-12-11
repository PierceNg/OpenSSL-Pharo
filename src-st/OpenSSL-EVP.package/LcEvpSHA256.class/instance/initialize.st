initialization
initialize

	super initialize.
	handle := LcLibCrypto current apiEvpSHA256.
	self errorIfNull: handle