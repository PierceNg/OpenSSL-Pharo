tests
testDigest3
	| msg result |
	
	msg := 'abcdefghijklmnopqrstuvwxyz'.
	result := ByteArray readHexFrom: 'f71c27109c692c1b56bbdceb5b9d2865b3708dbc' readStream.
	self assert: (md hashMessage: msg) equals: result