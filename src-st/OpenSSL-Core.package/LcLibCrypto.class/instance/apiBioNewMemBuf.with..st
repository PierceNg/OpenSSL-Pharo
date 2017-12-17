private - API - BIO
apiBioNewMemBuf: buf with: len
	^ self ffiCall: #(BIO* BIO_new_mem_buf (void *buf, int len))
		module: self library