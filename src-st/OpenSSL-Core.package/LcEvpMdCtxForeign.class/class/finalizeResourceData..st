finalization
finalizeResourceData: resourceData
	
	LcLibCrypto current
		ffiCall: #(void EVP_MD_CTX_destroy(ExternalAddress resourceData))	