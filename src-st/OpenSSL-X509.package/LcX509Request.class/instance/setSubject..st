accessing
setSubject: aName
	| xn |
	
	xn := LcX509Name with: aName.
	^ LcLibCrypto current apiX509ReqSetSubjectName: handle with: xn handle 