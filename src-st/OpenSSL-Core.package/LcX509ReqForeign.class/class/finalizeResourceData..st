finalization
finalizeResourceData: resourceData
	
	LcLibCrypto current
		ffiCall: #(void X509_REQ_free(ExternalAddress resourceData))	