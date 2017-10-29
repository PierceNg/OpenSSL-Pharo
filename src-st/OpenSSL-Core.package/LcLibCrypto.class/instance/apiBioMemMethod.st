private - API - BIO
apiBioMemMethod
	
	"Unless you're calling a bad library, BIO_s_mem() will surely work."
	^ self ffiCall: #(BIO_METHOD* BIO_s_mem())
		module: self library
		

