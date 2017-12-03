private - API - X509
apiX509ReqFree: aReq
	^ self ffiCall: #(void X509_REQ_free (X509_REQ *aReq))
		module: self library