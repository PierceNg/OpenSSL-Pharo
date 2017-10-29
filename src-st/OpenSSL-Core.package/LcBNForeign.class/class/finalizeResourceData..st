finalization
finalizeResourceData: resourceData
	
	LcLibCrypto current
		ffiCall: #(void BN_free(ExternalAddress resourceData))	