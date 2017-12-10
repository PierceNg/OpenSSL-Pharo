private - API - error
errorIfZero: retCode

	(retCode = 0) ifTrue: [ 
		LcError signal: (self apiErrorString: self apiGetError into: (ExternalAddress new)) ]