private - API - RSA
apiRsaPrint: anRSA with: aBio with: offset
	^ self ffiCall: #(int RSA_print (BIO *aBio, RSA *anRSA, int offset))
		module: self library