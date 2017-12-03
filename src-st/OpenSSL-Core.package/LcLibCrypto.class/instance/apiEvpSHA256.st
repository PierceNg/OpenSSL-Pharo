private - API - EVP
apiEvpSHA256
	^ self ffiCall: #(EVP_MD* EVP_sha256 ())
		module: self library