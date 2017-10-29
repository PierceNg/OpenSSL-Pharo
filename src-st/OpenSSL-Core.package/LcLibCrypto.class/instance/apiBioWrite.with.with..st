private - API - BIO
apiBioWrite: aBio with: buf with: size
	^ self ffiCall: #(int BIO_puts (BIO *aBio, ByteArray buf, int size))
		module: self library