private - API - X509
x509NamePrint: aName
	| bio out |
	
	bio := self bioNewMemBuf.
	[
		self apiX509NamePrintBio: aName with: bio with: 0.
		out := self bioRead: bio size: 10000
	] ensure: [ self apiBioFree: bio ].
	^ out asString