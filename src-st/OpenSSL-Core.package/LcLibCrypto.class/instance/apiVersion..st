private - API - library
apiVersion: flag
	^ self ffiCall: #(String SSLeay_version (int flag))
		module: self library