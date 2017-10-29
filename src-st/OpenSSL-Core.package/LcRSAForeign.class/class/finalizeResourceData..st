finalization
finalizeResourceData: resourceData
	
	LcLibCrypto current
		ffiCall: #(void RSA_free(ExternalAddress resourceData))	