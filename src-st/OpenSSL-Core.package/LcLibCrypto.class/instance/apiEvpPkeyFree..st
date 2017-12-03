private - API - EVP
apiEvpPkeyFree: anEvpPkey
	^ self ffiCall: #(void EVP_PKEY_free (EVP_PKEY *anEvpPkey))
		module: self library