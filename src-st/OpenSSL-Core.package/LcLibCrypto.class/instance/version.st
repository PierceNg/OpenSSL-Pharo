API - version
version
	
	^ String streamContents: [ :str |	
		#(0 2 3 4) do: [ :flag |
			str nextPutAll: (self apiVersion: flag); cr ]]
	
"From crypto.h
SSLEAY_VERSION = 0
SSLEAY_CFLAGS = 2
SSLEAY_BUILTON = 3
SSLEAY_PLATFORM = 4"