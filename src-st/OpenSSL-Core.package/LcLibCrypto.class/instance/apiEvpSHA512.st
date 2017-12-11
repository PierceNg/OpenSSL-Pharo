private - API - EVP
apiEvpSHA512
	^ self ffiCall: #(EVP_MD* EVP_sha512 ())
		module: self library