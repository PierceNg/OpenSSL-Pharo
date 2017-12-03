tests
testSetName
	
	name setName: 'www.example.com'.
	self assert: (name asString = 'CN=www.example.com')