accessing
modulusString
	| rx |
	
	rx := self class rxCache at: 'LcRSA-modulus'.
	rx search: self asString.
	^ ('' join: (rx subexpressions: 2))