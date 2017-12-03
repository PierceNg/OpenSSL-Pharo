initialization
initializeTypeMap

	TypeMap := Dictionary newFromPairs: #(
		BIO_METHOD   		#FFIOpaqueObject
		BIO		      		#LcBIOForeign
		BIGNUM	     		#LcBNForeign
		EVP_MD	     		#LcEvpMdForeign
		EVP_PKEY	     	#LcEvpPkeyForeign
		RSA	     			#LcRSAForeign	
		X509_REQ				#LcX509ReqForeign
		X509_NAME				#LcX509NameForeign
	)