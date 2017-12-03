private - API - X509
apiX509NamePrintBio: aName with: aBio with: obase 
	^ self ffiCall: #(int X509_NAME_print (BIO *aBio, X509_NAME *aName, int obase))
		module: self library