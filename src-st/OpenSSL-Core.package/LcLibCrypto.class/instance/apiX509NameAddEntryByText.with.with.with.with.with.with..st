private - API - X509
apiX509NameAddEntryByText: handle with: fname with: type with: fvalue with: len with: loc with: set

	^ self ffiCall: #(int X509_NAME_add_entry_by_txt (X509_NAME *handle,
											String fname,
											int type,
											String fvalue,
											int len,
											int loc,
											int set))
		module: self library