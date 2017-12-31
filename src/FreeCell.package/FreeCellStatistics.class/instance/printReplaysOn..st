printing
printReplaysOn: aStream 
	| total |
	aStream nextPutAll: 'With replays: ';
	 tab.
	self print: winsWithReplay type: #wins on: aStream.
	aStream nextPutAll: ', '.
	self print: lossesWithReplay type: #losses on: aStream.
	total := winsWithReplay + lossesWithReplay.
	total ~~ 0 ifTrue: [aStream nextPutAll: ', ';
		 print: (winsWithReplay / total * 100) asInteger;
		 nextPut: $%]