private - API - BIO
apiBioGets: aBio with: buf with: size
	^ self ffiCall: #(int BIO_gets (BIO *aBio, FFIExternalArray buf, int size))
		module: self library