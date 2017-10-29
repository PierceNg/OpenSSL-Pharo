system startup
shutDown: quitting

	quitting ifTrue: [ 
		self current apiCryptoCleanupAllData.
		self current apiFreeErrorStrings  ]