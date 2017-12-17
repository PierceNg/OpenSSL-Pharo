private - API - PEM
apiPemReadBioRsaPrivateKey: bio with: rsa with: cb with: uv
	^ self ffiCall: #(RSA* PEM_read_bio_RSAPrivateKey 
									(BIO *bio, RSA **rsa, FFIExternalObject cb, FFIExternalObject uv))
		module: self library