initialization
initializeTypeMap

	TypeMap := Dictionary newFromPairs: #(
		ASN1_PCTX			#FFIOpaqueObject
		BIO_METHOD   	#FFIOpaqueObject
		BIO		      		#LcBIOForeign
		BIGNUM	     		#LcBNForeign
		ENGINE	     		#LcEngineForeign
		EVP_MD	     		#LcEvpMdForeign
		EVP_MD_CTX	   #LcEvpMdCtxForeign
		EVP_PKEY	     	#LcEvpPkeyForeign
		EVP_PKEY_CTX	  	#LcEvpPkeyCtxForeign
		RSA	     			#LcRSAForeign	
		X509_REQ			#LcX509ReqForeign
		X509_NAME			#LcX509NameForeign
	)