private - API - BN
apiBnGetWord: aBigNum
	^ self ffiCall: #(FFIULong BN_get_word (BIGNUM *aBigNum))
		module: self library