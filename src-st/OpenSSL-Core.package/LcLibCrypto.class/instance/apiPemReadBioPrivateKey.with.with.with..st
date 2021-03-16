private - API - PEM
apiPemReadBioPrivateKey: bio with: evpPrivKey with: cb with: uv
	^ self
		ffiCall:
			#(EVP_PKEY * PEM_read_bio_PrivateKey #(BIO * bio , EVP_PKEY ** evpPrivKey , FFIExternalObject cb , FFIExternalObject uv))
		module: self library