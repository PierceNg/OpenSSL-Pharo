private - API - EVP
apiEvpDigestInit: mdCtx with: algo
	^ self ffiCall: #(int EVP_DigestInit (EVP_MD_CTX *mdCtx, EVP_MD *algo))
		module: self library