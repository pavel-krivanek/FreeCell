printing
printOn: aStream

	self printSessionOn: aStream.
	aStream cr.
	self printTotalOn: aStream.
	aStream cr.
	self printReplaysOn: aStream.
	aStream cr.
	self printStreaksOn: aStream.