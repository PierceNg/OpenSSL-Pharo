private - API - EVP
apiEvpMdCtxDestroy: handle
	^ self ffiCall: #(void EVP_MD_CTX_destroy (EVP_MD_CTX *handle))
		module: self library