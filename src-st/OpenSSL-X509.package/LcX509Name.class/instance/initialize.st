initialization
initialize

	handle := LcLibCrypto current apiX509NameNew.
	self errorIfNull: handle.
	