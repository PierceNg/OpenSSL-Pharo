tests
testDigestSignAndVerifyFail
	| msg sig |
	
	msg := 'Grumpy wizards make toxic brew for the evil Queen and Jack.'.
	sig := pkey digestSignMessage: msg.
	sig at: 1 put: 0.
	self assert: (pkey digestVerifyMessage: msg with: sig) not
	