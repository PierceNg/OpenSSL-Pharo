private - API - BIO
apiBioFree: handle
	^ self ffiCall: #(int BIO_free (BIO *handle))
		module: self library