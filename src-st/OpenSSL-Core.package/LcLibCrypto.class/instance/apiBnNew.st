private - API - BN
apiBnNew
	^ self ffiCall: #(BIGNUM* BN_new ())
		module: self library