private - API - EVP
apiEvpPkeyCtxFree: handle
	^ self ffiCall: #(void EVP_PKEY_CTX_free (EVP_PKEY_CTX *handle))
		module: self library