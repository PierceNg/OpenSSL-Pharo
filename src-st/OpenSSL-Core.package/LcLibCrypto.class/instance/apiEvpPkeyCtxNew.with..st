private - API - EVP
apiEvpPkeyCtxNew: pkey with: engine
	^ self ffiCall: #(EVP_PKEY_CTX* EVP_PKEY_CTX_new (EVP_PKEY *pkey, ENGINE *engine))
		module: self library