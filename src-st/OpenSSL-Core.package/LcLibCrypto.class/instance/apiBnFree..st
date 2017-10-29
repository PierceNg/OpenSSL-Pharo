private - API - BN
apiBnFree: aBigNum
	^ self ffiCall: #(void BN_free (BIGNUM *aBigNum))
		module: self library