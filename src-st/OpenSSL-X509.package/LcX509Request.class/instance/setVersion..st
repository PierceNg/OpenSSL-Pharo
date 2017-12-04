actions
setVersion: anInteger
	self errorIfZero: (LcLibCrypto current apiX509ReqSetVersion: handle with: anInteger) 