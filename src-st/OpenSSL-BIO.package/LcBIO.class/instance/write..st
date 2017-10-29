input/output
write: aByteArray
	^ LcLibCrypto current apiBioWrite: handle with: aByteArray with: aByteArray size