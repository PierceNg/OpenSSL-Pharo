private - API - RSA
rsaGenerateKey: anRSA bitSize: bits e: e

	^ self apiRsaGenerateKey: anRSA
			with: bits 
			with: e
			with: (ExternalAddress new)