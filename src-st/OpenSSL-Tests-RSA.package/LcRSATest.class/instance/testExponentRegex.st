tests
testExponentRegex
	| rx |
	
	rx := LcRSA rxCache at: 'LcRSA-exponent'.
	rx search: self class rsaString1024.
	self assert: ('' join: (rx subexpressions: 2)) equals: '10001'
	