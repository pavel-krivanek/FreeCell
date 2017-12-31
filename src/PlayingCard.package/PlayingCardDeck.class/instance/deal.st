shuffling/dealing
deal
	| card |
	^ self cards notEmpty 
		ifTrue: 
			[card := self topCard.
			card delete.
			card]
		ifFalse: [nil]