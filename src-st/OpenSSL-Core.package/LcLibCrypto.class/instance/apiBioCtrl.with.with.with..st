private - API - BIO
apiBioCtrl: bio with: cmd with: larg with: parg
	^ self ffiCall: #(int BIO_ctrl (BIO *bio, int cmd, long larg, FFIExternalObject parg))
		module: self library