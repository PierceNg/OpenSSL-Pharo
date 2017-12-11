tests
testHMAC
	| msg st c |
	
	msg := 'Grumpy wizards make toxic brew for the evil Queen and Jack.'.
	st := (HMAC on: SHA256)
		key: key;
		digestMessage: msg asByteArray.
	c := (HMAC on: LcEvpSHA256)
		key: key;
		digestMessage: msg asByteArray.
	self assert: (st = c)