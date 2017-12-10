actions
digestSignMessage: aByteArray

	^ self digestSignInit;
			digestSignUpdate: aByteArray;
			digestSignFinal
