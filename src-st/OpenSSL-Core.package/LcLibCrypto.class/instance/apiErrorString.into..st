private - API - error
apiErrorString: err into: buf
	^ self ffiCall: #(String ERR_error_string (FFIULong err, ExternalAddress buf))
		module: self library