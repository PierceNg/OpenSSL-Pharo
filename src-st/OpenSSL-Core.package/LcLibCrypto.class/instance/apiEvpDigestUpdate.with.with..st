private - API - EVP
apiEvpDigestUpdate: mdCtx with: buf with: size
	^ self ffiCall: #(int EVP_DigestUpdate (EVP_MD_CTX *mdCtx, ByteArray buf, size_t size))
		module: self library