private - API - library
apiVersion: flag
	^ self ffiCall: #(String OpenSSL_version (int flag))
		module: self library