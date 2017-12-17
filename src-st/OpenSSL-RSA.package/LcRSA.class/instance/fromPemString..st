converting
fromPemString: pemString
	| nullp bio |
	
	nullp := FFIExternalObject new.
	bio := LcMemoryBIO fromString: (self cr2lf: pemString).
	[	handle := LcLibCrypto current apiPemReadBioRsaPrivateKey: bio handle with: nullp with: nullp with: nullp.
		self errorIfNull: handle 
	] ensure: [ bio close ].
	