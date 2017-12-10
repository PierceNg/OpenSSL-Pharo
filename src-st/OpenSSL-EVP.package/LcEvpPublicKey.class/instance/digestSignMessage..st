actions
digestSignMessage: aByteArray

	^ self digestSignInit;
			digestUpdate: aByteArray;
			digestSignFinal
