tests
testFromPemString
	| r |
	
	rsa fromPemString: LcRSATest rsaPemString1024.
	r := rsa asString.
	self assert: ((r allRegexMatches: 'RSA Private-Key\: \(\d+ bit.*\)') first 
								allRegexMatches: '\d+') first
		equals:'1024'.
	self assert: ((r allRegexMatches: 'publicExponent\: \d+') first 
								allRegexMatches: '\d+') first
		equals: '65537'.
								
"rsa asString output looks like this:
RSA Private-Key: (1024bit, 2 primes)
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