tests
testDigestSignAndVerify
	| msg sig |
	
	msg := 'Grumpy wizards make toxic brew for the evil Queen and Jack.'.
	sig := pkey digestSignMessage: msg.
	self assert: (pkey digestVerifyMessage: msg with: sig)
	