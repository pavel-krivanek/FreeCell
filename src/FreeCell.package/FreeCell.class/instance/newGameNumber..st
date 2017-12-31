actions
newGameNumber: aSeedOrNil 
	cardsRemainingDisplay value ~~ 0 ifTrue: [self gameLost].
	cardsRemainingDisplay flash: false; highlighted: false; value: 52.
	elapsedTimeDisplay flash: false; highlighted: false.
	"board handles nil case"
	self board pickGame: aSeedOrNil.
	elapsedTimeDisplay reset; start.
	gameNumberDisplay value: self currentGame