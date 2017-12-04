private - API - X509
apiX509ReqSign: aReq with: aKey with: aMessageDigest
	^ self ffiCall: #(int X509_REQ_sign (X509_REQ *aReq, EVP_PKEY *aKey, EVP_MD *aMessageDigest))
		module: self library