tests
testModulusRegex
	| v rx |
	
	v := '00:b3:06:40:6b:48:b8:e5:29:93:92:ce:bd:b5:ad:
    d0:65:fb:d5:19:2e:59:3d:8a:70:4c:f3:af:e3:71:
    04:52:73:14:12:23:63:a8:5c:d5:c9:aa:b7:c0:02:
    39:aa:a4:88:5e:17:9c:a9:09:90:47:eb:fc:fa:0f:
    3f:45:f5:73:71:17:f9:6b:84:90:9d:8e:3f:dd:13:
    30:59:15:d6:58:97:0c:c8:31:46:77:94:2b:37:d9:
    44:0a:0b:7f:eb:bb:13:4f:5d:14:75:54:2b:05:60:
    c6:06:7e:34:19:21:a5:8e:30:57:bc:d1:58:71:f7:
    93:37:d5:91:20:33:83:7b:e5'.	
	rx := LcRSA rxCache at: 'LcRSA-modulus'.
	rx search: self class rsaString1024.
	self assert: ('' join: (rx subexpressions: 2)) equals: v
	