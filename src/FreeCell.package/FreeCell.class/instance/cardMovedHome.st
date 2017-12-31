actions
cardMovedHome

	cardsRemainingDisplay value: (cardsRemainingDisplay value - 1).
	autoMoveRecursionCount := autoMoveRecursionCount - 1 max: 0.
	cardsRemainingDisplay value = 0 
		ifTrue: [self gameWon]
		ifFalse: [autoMoveRecursionCount = 0 ifTrue: [elapsedTimeDisplay continue]].