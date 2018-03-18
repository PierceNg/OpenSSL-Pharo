private - API - EVP
apiEvpRIPEMD160
	^ self ffiCall: #(EVP_MD* EVP_ripemd160 ())
		module: self library