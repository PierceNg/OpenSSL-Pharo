private - API - X509
apiX509ReqSetSubjectName: aReq with: aName
	^ self ffiCall: #(int X509_REQ_set_subject_name (X509_REQ *aReq, X509_NAME *aName))
		module: self library