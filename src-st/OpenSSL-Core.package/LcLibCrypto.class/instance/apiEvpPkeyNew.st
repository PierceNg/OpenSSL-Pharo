private - API - EVP
apiEvpPkeyNew
	^ self ffiCall: #(EVP_PKEY* EVP_PKEY_new ())
		module: self library