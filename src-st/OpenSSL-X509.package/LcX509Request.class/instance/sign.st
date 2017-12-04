actions
sign

	self errorIfZero: (LcLibCrypto current 
										apiX509ReqSign: handle 
										with: pkey handle
										with: self class defaultDigest) 