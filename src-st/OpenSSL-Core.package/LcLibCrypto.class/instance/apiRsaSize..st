private - API - RSA
apiRsaSize: anRSA
	^ self ffiCall: #(int RSA_size (RSA *anRSA))
		module: self library