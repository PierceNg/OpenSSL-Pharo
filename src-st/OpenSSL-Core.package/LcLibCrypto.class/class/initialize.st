initialization
initialize

	self reset.
	self initializeTypeMap.
	Smalltalk addToStartUpList: self; addToShutDownList: self