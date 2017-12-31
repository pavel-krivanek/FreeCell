printing
printSessionOn: aStream 
	| total |
	aStream nextPutAll: 'This session: ' , String tab.
	self print: sessionWins type: #wins on: aStream.
	aStream nextPutAll: ', '.
	self print: sessionLosses type: #losses on: aStream.
	total := sessionWins + sessionLosses.
	total ~~ 0 ifTrue: [aStream nextPutAll: ', ';
		 print: (sessionWins / total * 100) asInteger;
		 nextPut: $%]