tests
testWord
	| w |
	
	w := 65537.
	bn setWord: w.
	self assert: (bn getWord = w)