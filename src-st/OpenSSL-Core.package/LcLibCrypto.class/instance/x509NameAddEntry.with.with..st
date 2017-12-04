private - API - X509
x509NameAddEntry: handle with: fieldName with: fieldValue

	^ self apiX509NameAddEntryByText: handle 
			with: fieldName 
			with: 16r1001 "MBSTRING_ASC, from asn1.h" 
			with: fieldValue 
			with: -1 
			with: -1 
			with: 0
						
"See https://wiki.openssl.org/index.php/Manual:X509_NAME_add_entry_by_txt(3)."