private - API - RSA
apiRsaNew
	^ self ffiCall: #(RSA* RSA_new ())
		module: self library