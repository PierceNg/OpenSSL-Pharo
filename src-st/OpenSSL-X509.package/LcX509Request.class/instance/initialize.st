initialization
initialize

	handle := LcLibCrypto current apiX509ReqNew.
	self errorIfNull: handle.
