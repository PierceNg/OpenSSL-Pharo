initialization
initializeRxCache

	self rxCache 
		at: 'LcRSA-modulus' 
			put: (RxMatcher forString: 'modulus\:\s+00\:([[:xdigit:]:\s])+\spublicExponent');
		at: 'LcRSA-exponent' 
			put: (RxMatcher forString: 'publicExponent\:\s+[[:digit:]:\s]+ \(0x([[:xdigit:]x]+)\)\sprivate')
			
		