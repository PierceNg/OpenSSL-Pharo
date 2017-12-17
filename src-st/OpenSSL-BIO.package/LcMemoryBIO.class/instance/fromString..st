instance creation
fromString: aString

	handle := LcLibCrypto current apiBioNewMemBuf: aString asByteArray with: aString size.
	self errorIfNull: handle 