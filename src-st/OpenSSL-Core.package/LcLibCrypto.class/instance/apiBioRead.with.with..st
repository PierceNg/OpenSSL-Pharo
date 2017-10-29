private - API - BIO
apiBioRead: aBio with: buf with: size
	^ self ffiCall: #(int BIO_read (BIO *aBio, FFIExternalArray buf, int size))
		module: self library