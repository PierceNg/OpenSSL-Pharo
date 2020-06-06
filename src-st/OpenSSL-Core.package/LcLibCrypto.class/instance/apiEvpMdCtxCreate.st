private - API - EVP
apiEvpMdCtxCreate
	^ self ffiCall: #(EVP_MD_CTX* EVP_MD_CTX_new ())
		module: self library