private - API - RSA
apiRsaPublicKeyDup: anRSA
	^ self ffiCall: #(RSA* RSAPublicKey_dup (RSA *anRSA))
		module: self library