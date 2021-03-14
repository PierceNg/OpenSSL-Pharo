private - API - PEM
apiPemReadBioPUBKEY: bio with: evpPubKey with: cb with: uv
	^ self
		ffiCall:
			#(EVP_PKEY * PEM_read_bio_PUBKEY #(BIO * bio , EVP_PKEY ** evpPubKey , FFIExternalObject cb , FFIExternalObject uv))
		module: self library