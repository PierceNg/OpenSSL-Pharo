actions
reset
	
	self errorIfZero: (LcLibCrypto current 
										apiBioCtrl: handle
										with: 1 " == BIO_CTRL_RESET"
										with: 0
										with: FFIExternalObject new)