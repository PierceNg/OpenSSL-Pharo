private - API - EVP
apiEvpDigestSignInit: mdCtx with: pkeyCtx with: md with: engine with: pkey
	^ self ffiCall: #(int EVP_DigestSignInit 
			(EVP_MD_CTX *mdCtx, EVP_PKEY_CTX **pkeyCtx, EVP_MD *md, ENGINE *engine, EVP_PKEY *pkey))
		module: self library