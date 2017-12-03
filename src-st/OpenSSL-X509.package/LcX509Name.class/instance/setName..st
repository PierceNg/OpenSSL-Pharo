actions
setName: aString
	^ LcLibCrypto current x509NameAddEntry: handle with: 'CN' with: aString  