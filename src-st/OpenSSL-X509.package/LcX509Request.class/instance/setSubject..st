actions
setSubject: aName
	| xn |
	
	xn := LcX509Name with: aName.
	self errorIfZero: (LcLibCrypto current apiX509ReqSetSubjectName: handle with: xn handle) 