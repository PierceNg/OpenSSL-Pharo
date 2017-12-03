private - API - X509
apiX509ReqPrintBio: anX509Request with: aBio 
	^ self ffiCall: #(int X509_REQ_print (BIO *aBio, X509_REQ *anX509Request))
		module: self library