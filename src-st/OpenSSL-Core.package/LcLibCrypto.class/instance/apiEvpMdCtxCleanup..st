private - API - EVP
apiEvpMdCtxCleanup: handle
	^ self ffiCall: #(int EVP_MD_CTX_cleanup (EVP_MD_CTX *handle))
		module: self library