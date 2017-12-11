private - API - EVP
apiEvpDigestFinal: mdCtx with: buf with: size
	^ self ffiCall: #(int EVP_DigestFinal (EVP_MD_CTX *mdCtx, FFIExternalArray buf, LcUIntValue size))
		module: self library