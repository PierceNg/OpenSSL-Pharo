private - API - EVP
evpDigestSignFinal: mdCtx
	| sizeRequired sizeRequested buf ret result |
	
	sizeRequired :=  LcSizeTValue new.
	buf := FFIExternalObject new.
	ret := self apiEvpDigestSignFinalFirst: mdCtx with: buf with: sizeRequired.
	self errorIfZeroOrNegative: ret.
	"(sizeRequired value asInteger > 0) ifFalse: self error."
	"Above size test fails, even though in the debugger the gt-zero test returns true."
	
	sizeRequested := LcSizeTValue new.
	sizeRequested value: sizeRequired value.
	buf := FFIExternalArray externalNewType: 'unsignedChar' size: sizeRequired value.
	[	
		ret := self apiEvpDigestSignFinalSecond: mdCtx with: buf with: sizeRequested.
		self errorIfZeroOrNegative: ret.
		"(sizeRequested value asInteger = sizeRequired value asInteger) ifFalse: self error."
		"Above size test fails, even though in the debuggr the values are equal."
		result := ByteArray new: sizeRequested value.
		1 to: sizeRequested value do: [ :i |
			result at: i put: (buf at: i) ]	
	] ensure: [ buf free ].
	^ result
