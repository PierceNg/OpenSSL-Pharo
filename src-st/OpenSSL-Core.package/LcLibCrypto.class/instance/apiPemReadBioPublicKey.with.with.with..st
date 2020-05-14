private - API - PEM
apiPemReadBioPublicKey: bio with: rsa with: cb with: uv
	^ self
		ffiCall:
			#(RSA * PEM_read_bio_PublicKey #(BIO * bio , RSA ** rsa , FFIExternalObject cb , FFIExternalObject uv))
		module: self library