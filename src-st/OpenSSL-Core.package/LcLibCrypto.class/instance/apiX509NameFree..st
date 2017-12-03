private - API - X509
apiX509NameFree: handle
	^ self ffiCall: #(void X509_NAME_free (X509_NAME *handle))
		module: self library