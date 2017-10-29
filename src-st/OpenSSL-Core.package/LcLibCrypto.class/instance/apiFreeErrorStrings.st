private - API - error
apiFreeErrorStrings
	^ self ffiCall: #(void ERR_free_strings (void))
		module: self library