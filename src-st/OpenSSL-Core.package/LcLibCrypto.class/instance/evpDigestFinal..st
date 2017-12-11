private - API - EVP
evpDigestFinal: mdCtx
	| sizeReturned buf ret result |
	
	sizeReturned :=  LcUIntValue new.
	buf := FFIExternalArray externalNewType: 'unsignedChar' size: 64.
	self flag: #XXX. "Hardcoding size of 64, currently largest known size."
	[	
		ret := self apiEvpDigestFinal: mdCtx with: buf with: sizeReturned.
		self errorIfZero: ret.
		result := ByteArray new: sizeReturned value.
		1 to: sizeReturned value do: [ :i |
			result at: i put: (buf at: i) ]	
	] ensure: [ buf free ].
	^ result
