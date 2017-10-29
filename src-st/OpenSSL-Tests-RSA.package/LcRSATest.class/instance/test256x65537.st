tests
test256x65537
	| r |
	
	rsa generateKey: 256.
	r := rsa asString.
	self assert: ((r allRegexMatches: 'Private-Key\: \(\d+ bit\)') first 
								allRegexMatches: '\d+') first = '256'.
	self assert: ((r allRegexMatches: 'publicExponent\: \d+') first 
								allRegexMatches: '\d+') first = '65537'.
								
"rsa asString output looks like this:
Private-Key: (512 bit)
modulus:
  ...
publicExponent: 65537 (0x10001)
privateExponent:
  ...
prime1:
  ...
prime2:
  ...
exponent1:
  ...
exponent2:
  ...
coefficient:
  ...
"