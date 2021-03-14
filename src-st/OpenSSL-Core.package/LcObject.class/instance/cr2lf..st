private - actions
cr2lf: aString

	^ aString collect: [ :c |
		(c = Character cr)
			ifFalse: [ c ]
			ifTrue: [ Character lf ]]
		