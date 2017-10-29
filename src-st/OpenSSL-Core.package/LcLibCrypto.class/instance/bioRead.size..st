private - API - BIO
bioRead: aBio size: size
	| buf actual result |
	
	buf := FFIExternalArray externalNewType: 'unsignedByte' size: size.
	[	
		actual := self apiBioRead: aBio with: buf with: size.
		result := ByteArray new: actual.
		1 to: actual do: [ :idx |
			result at: idx put: (buf at: idx) ]
	] ensure: [ buf free ].
	^ result