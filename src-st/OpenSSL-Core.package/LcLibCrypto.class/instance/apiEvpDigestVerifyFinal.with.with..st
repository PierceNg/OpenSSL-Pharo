private - API - EVP
apiEvpDigestVerifyFinal: mdCtx with: buf with: size
	^ self ffiCall: #(int EVP_DigestVerifyFinal (EVP_MD_CTX *mdCtx, ByteArray buf, size_t size))
		module: self library