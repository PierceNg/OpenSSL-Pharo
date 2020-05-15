tests
testFromPemPubKeyString
	| r |
	
	rsa fromRsaPublicKeyPemString: LcRSATest rsaPemPubKeyString1024.
	r := rsa asString.
	self assert: ((r allRegexMatches: 'Public-Key\: \(\d+ bit\)') first 
								allRegexMatches: '\d+') first 
		equals: '1024'.
	self assert: ((r allRegexMatches: 'Exponent\: \d+') first 
								allRegexMatches: '\d+') first 
		equals: '65537'.
								
"rsa asString output looks like this for public key PEM string:
Public-Key: (1024 bit)
modulus:
  ...
Exponent: 65537 (0x10001)
"