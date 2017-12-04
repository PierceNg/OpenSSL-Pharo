private - API - error
apiGetError
	^ self ffiCall: #(ulong ERR_get_error (void))
		module: self library