finalization
finalizeResourceData: resourceData
	
	LcLibCrypto current
		ffiCall: #(void EVP_PKEY_free(ExternalAddress resourceData))	