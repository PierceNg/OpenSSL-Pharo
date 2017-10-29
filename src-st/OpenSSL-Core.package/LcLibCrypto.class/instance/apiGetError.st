private - API - error
apiGetError
	^ self ffiCall: #(unsigned long ERR_get_error (void))
		module: self library