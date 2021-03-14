private - API - RSA
evpPkeyPrintPublic: anEvpPkey
	| nullp bio out |
	
	nullp := FFIExternalObject new.
	bio := self bioNewMemBuf.
	[
		self apiEvpPkeyPrintPublic: anEvpPkey with: bio with: 0 with: nullp.
		out := self bioRead: bio size: 10000
	] ensure: [ self apiBioFree: bio ].
	^ out asString