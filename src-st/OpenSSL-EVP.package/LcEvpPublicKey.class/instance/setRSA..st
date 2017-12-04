actions
setRSA: anRsa
	self errorIfZero: (LcLibCrypto current apiEvpPkeySetRSA: handle with: anRsa handle) 