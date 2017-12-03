private - API - RSA
apiRsaPrivateKeyDup: anRSA
	^ self ffiCall: #(RSA* RSAPrivateKey_dup (RSA *anRSA))
		module: self library