private - API - RSA
apiRsaFree: anRSA
	^ self ffiCall: #(void RSA_free (RSA *anRSA))
		module: self library