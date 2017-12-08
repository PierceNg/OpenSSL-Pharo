accessing
exponent
	| rx |
	
	rx := self class rxCache at: 'LcRSA-exponent'.
	rx search: self asString.
	^ ('' join: (rx subexpressions: 2)) asInteger