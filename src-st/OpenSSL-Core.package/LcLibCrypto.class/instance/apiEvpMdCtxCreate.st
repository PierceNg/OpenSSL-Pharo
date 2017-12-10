private - API - EVP
apiEvpMdCtxCreate
	^ self ffiCall: #(EVP_MD_CTX* EVP_MD_CTX_create ())
		module: self library