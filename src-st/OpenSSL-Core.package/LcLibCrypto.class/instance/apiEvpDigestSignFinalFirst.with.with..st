private - API - EVP
apiEvpDigestSignFinalFirst: mdCtx with: buf with: size
	^ self ffiCall: #(int EVP_DigestSignFinal (EVP_MD_CTX *mdCtx, FFIExternalObject buf, LcSizeTValue size))
		module: self library