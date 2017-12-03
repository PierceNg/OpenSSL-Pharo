tests
testSetSubjectName
	| rx |
		
	req setSubject: 'www.example.com'.
	rx := RxMatcher forString: 'Subject\:\s*(CN=)(\w+\.)+(\w+)'.
	rx search: req asString.
	self assert: ((rx subexpressions: 1) first = 'Subject: CN=www.example.com')