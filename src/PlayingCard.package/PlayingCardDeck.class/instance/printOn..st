printing
printOn: aStream 
	| cards |
	cards := self cards.
	aStream nextPutAll: 'aCardDeck('.
	cards size > 1 
		ifTrue: 
			[cards allButLast do: 
					[:card | 
					aStream
						print: card;
						nextPutAll: ', ']].
	cards notEmpty ifTrue: [aStream print: cards last].
	aStream nextPut: $)