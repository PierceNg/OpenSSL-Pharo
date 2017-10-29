initialization
initializeTypeMap

	TypeMap := Dictionary newFromPairs: #(
		BIO_METHOD    	#FFIOpaqueObject
		BIO		      	#LcBIOForeign
		BIGNUM	     	#LcBNForeign
		RSA	     		#LcRSAForeign			
	)