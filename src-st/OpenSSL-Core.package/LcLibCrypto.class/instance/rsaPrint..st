private - API - RSA
rsaPrint: anRSA
	| bio out |
	
	bio := self bioNewMemBuf.
	[
		self apiRsaPrint: anRSA with: bio with: 0.
		out := self bioRead: bio size: 10000
	] ensure: [ self apiBioFree: bio ].
	^ out asString