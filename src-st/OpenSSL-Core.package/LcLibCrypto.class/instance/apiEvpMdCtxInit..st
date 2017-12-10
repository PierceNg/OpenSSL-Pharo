private - API - EVP
apiEvpMdCtxInit: handle
	^ self ffiCall: #(void EVP_MD_CTX_init (EVP_MD_CTX *handle))
		module: self library