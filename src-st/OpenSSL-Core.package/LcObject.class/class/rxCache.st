accessing
rxCache

	^ LcRxCache ifNil: [ 
			LcRxCache := Dictionary new.
			self initializeRxCache ]