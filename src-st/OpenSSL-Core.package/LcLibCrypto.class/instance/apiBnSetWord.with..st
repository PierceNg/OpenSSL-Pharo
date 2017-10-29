private - API - BN
apiBnSetWord: aBigNum with: uLong
	^ self ffiCall: #(int BN_set_word (BIGNUM *aBigNum, FFIULong uLong))
		module: self library