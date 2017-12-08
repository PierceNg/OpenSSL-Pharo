initialization
initialize

	super initialize.
	handle := LcLibCrypto current apiRsaNew.
	self errorIfNull: handle