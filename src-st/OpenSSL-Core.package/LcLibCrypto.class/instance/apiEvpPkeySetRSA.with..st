private - API - EVP
apiEvpPkeySetRSA: evpKey with: rsaKey
	^ self ffiCall: #(int EVP_PKEY_set1_RSA (EVP_PKEY *evpKey, RSA *rsaKey))
		module: self library