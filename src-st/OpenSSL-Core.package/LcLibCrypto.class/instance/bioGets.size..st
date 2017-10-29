private - API - BIO
bioGets: aBio size: size
	| buf actual string |
	
	buf := FFIExternalArray externalNewType: 'char' size: size.
	[
		actual := self apiBioGets: aBio with: buf with: size.
		string := String streamContents: [ :str |
			1 to: actual do: [ :idx |
				str nextPut: (buf at: idx) asCharacter ]].
	] ensure: [ buf free ].
	^ string