private - API - BIO
apiBioNewMemBuf: aMethod
	^ self ffiCall: #(BIO* BIO_new (BIO_METHOD *aMethod))
		module: self library