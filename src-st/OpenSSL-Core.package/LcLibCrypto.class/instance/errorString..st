private - API - error
errorString: err
	^ self apiErrorString: err into: (ExternalAddress new)
