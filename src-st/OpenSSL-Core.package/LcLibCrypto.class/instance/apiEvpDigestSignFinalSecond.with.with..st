private - API - EVP
apiEvpDigestSignFinalSecond: mdCtx with: buf with: size
	^ self ffiCall: #(int EVP_DigestSignFinal (EVP_MD_CTX *mdCtx, FFIExternalArray buf, LcSizeTValue size))
		module: self library