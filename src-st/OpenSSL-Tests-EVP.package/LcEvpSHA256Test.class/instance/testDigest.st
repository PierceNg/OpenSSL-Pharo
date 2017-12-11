tests
testDigest
	| msg |
	
	msg := 'Grumpy wizards make toxic brew for the evil Queen and Jack.'.
	self assert: (md hashMessage: msg) = (SHA256 hashMessage: msg)