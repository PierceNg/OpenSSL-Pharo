tests
testFromPemPrivKeyString
	| msg privKey pubKey sig |

	msg := 'Grumpy wizards make toxic brew for the evil Queen and Jack.'.

	privKey := LcEvpPublicKey fromPrivateKeyPemString: LcEvpPublicKeyTest pemPrivKeyString2048.
	pubKey := LcEvpPublicKey fromPublicKeyPemString: LcEvpPublicKeyTest pemPubKeyString2048.

	sig := privKey digestSignMessage: msg.
	self assert: (pubKey digestVerifyMessage: msg with: sig). 
