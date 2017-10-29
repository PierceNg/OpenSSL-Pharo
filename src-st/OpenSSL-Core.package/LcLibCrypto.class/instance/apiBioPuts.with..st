private - API - BIO
apiBioPuts: aBio with: aString
	^ self ffiCall: #(int BIO_puts (BIO *aBio, String aString))
		module: self library