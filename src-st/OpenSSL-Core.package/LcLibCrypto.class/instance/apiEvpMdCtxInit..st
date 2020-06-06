private - API - EVP
apiEvpMdCtxInit: handle
	^ self ffiCall: #(void EVP_MD_CTX_reset (EVP_MD_CTX *handle))
		module: self library