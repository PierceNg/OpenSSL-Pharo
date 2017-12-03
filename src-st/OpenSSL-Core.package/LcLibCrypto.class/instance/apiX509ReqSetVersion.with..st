private - API - X509
apiX509ReqSetVersion: aReq with: aVer
	^ self ffiCall: #(int X509_REQ_set_version (X509_REQ *aReq, long aVer))
		module: self library