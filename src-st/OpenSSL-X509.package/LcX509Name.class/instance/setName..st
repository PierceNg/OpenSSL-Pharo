actions
setName: aString
	self errorIfZero: (LcLibCrypto current x509NameAddEntry: handle with: 'CN' with: aString)  