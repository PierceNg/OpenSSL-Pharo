initialization
initializeRxCache

	self rxCache 
		at: 'LcRSA-modulus' 
			put: (RxMatcher forString: 'modulus\:\s+([[:xdigit:]:\s])+\spublicExponent');
		at: 'LcRSA-exponent' 
			put: (RxMatcher forString: 'publicExponent\:\s+([[:xdigit:]:\s])+ \([[:xdigit:]x]+\)\sprivate')
			
		