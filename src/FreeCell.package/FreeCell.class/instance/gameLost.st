actions
gameLost

	state := #lost.
	elapsedTimeDisplay stop.
	cardsRemainingDisplay highlighted: true; flash: true.
	Statistics gameLost: self currentGame