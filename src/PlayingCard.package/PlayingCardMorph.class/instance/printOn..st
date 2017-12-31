printing
printOn: aStream

	aStream
		print: cardNumber;
		nextPutAll: ' of ';
		print: (self class suits at: suitNumber).