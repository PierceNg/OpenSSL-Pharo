actions
digestVerifyMessage: messageByteArray with: signatureByteArray

	^ self digestVerifyInit;
			digestUpdate: messageByteArray;
			digestVerifyFinal: messageByteArray with: signatureByteArray 
