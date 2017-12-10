finalization
finalizeResourceData: resourceData
	
	LcLibCrypto current
		ffiCall: #(void BIO_free(ExternalAddress resourceData))	