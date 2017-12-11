initialization
initialize

	super initialize.
	handle := LcLibCrypto current apiEvpSHA512.
	self errorIfNull: handle