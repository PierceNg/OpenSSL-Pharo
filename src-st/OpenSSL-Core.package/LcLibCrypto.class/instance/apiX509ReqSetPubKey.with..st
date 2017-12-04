private - API - X509
apiX509ReqSetPubKey: aReq with: aKey
	^ self ffiCall: #(int X509_REQ_set_pubkey (X509_REQ *aReq, EVP_PKEY *aKey))
		module: self library