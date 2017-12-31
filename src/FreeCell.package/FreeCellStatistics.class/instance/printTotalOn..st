printing
printTotalOn: aStream 
	| total |
	aStream nextPutAll: 'Total: ';
	 tab;
	 tab;
	 tab.
	self print: totalWins type: #wins on: aStream.
	aStream nextPutAll: ', '.
	self print: totalLosses type: #losses on: aStream.
	total := totalWins + totalLosses.
	total ~~ 0 ifTrue: [aStream nextPutAll: ', ';
		 print: (totalWins / total * 100) asInteger;
		 nextPut: $%]