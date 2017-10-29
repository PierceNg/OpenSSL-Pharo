private - API - error
apiLoadErrorStrings
	^ self ffiCall: #(void ERR_load_crypto_strings (void))
		module: self library