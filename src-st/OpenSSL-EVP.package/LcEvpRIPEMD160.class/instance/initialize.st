initialization
initialize

	super initialize.
	handle := LcLibCrypto current apiEvpRIPEMD160.
	self errorIfNull: handle