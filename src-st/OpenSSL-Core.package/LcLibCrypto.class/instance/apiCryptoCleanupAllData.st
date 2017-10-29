private - API - library
apiCryptoCleanupAllData
	^ self ffiCall: #(void CRYPTO_cleanup_all_ex_data (void))
		module: self library