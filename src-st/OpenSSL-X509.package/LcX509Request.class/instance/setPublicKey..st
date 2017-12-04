actions
setPublicKey: anEvpPkey

	self errorIfZero: (LcLibCrypto current apiX509ReqSetPubKey: handle with: anEvpPkey handle).
	pkey := anEvpPkey 