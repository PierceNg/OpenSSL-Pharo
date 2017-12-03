private - API - X509
x509RequestPrint: aX509Request
	| bio out |
	
	bio := self bioNewMemBuf.
	[
		self apiX509ReqPrintBio: aX509Request with: bio.
		out := self bioRead: bio size: 10000
	] ensure: [ self apiBioFree: bio ].
	^ out asString