private - API - error
errorIfNull: aHandle

	aHandle isNull ifTrue: [ 
		LcError signal: (self apiErrorString: self apiGetError into: (ExternalAddress new)) ]