initializing/finalizing
open: aSelector

	handle := LcLibCrypto current perform: aSelector.
	self errorIfNull: handle