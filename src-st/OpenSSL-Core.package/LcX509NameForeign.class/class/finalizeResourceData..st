finalization
finalizeResourceData: resourceData
	
	LcLibCrypto current
		ffiCall: #(void X509_NAME_free(ExternalAddress resourceData))	