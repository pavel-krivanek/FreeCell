actions
quit
	cardsRemainingDisplay value ~~ 0 ifTrue: [self gameLost].

	self owner == self world
		ifTrue: [self delete]
		ifFalse: [self owner delete].
	Statistics close