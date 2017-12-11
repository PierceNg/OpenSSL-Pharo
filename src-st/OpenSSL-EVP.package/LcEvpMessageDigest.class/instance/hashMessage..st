actions
hashMessage: aStringOrByteArray

	^ self digestInit;
			digestUpdate: aStringOrByteArray asByteArray;
			digestFinal