private - API - PEM
apiPemReadBioRsaPublicKey: bio with: rsa with: cb with: uv
	^ self
		ffiCall:
			#(RSA * PEM_read_bio_RSAPublicKey #(BIO * bio , RSA ** rsa , FFIExternalObject cb , FFIExternalObject uv))
		module: self library