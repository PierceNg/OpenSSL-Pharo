tests
testFromPemPubKeyString
	| pk2 r |
	
	pk2 := LcEvpPublicKey fromPublicKeyPemString: LcEvpPublicKeyTest pemPubKeyString2048.
	r := pk2 publicKeyAsString.
	self assert: ((r allRegexMatches: 'Public-Key\: \(\d+ bit\)') first 
								allRegexMatches: '\d+') first 
		equals: '2048'.
	self assert: ((r allRegexMatches: 'Exponent\: \d+') first 
								allRegexMatches: '\d+') first 
		equals: '65537'.
								
"Output of #publicKeyAsString looks like this for an RSA public key PEM string:
RSA Public-Key: (2048 bit)
Modulus:
  ...
Exponent: 65537 (0x10001)
"