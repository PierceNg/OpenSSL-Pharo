private - API - error
errorIfZeroOrNegative: retCode

	(retCode <= 0) ifTrue: [ 
		LcError signal: (self apiErrorString: self apiGetError into: (ExternalAddress new)) ]