tests
testDuplicate
	| r rsa2 r2 prx p1 p2 |
	
	rsa generateKey: 1024.
	r := rsa asString.
	rsa2 := rsa duplicate.
	r2 := rsa2 asString.
	
	prx := RxMatcher forString: 'prime1\:\s*([abcdef:0-9\s]+)prime2'.
	
	prx search: r.
	p1 := prx subexpression: prx subexpressionCount.

	prx search: r2.
	p2 := prx subexpression: prx subexpressionCount.
		
	self assert: (p1 = p2).
								
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