actions
gameLost: gameNumber

	"Don't count multiple losses of the same game"
	gameNumber = lastGameLost ifTrue: [^ self].
	lastGameLost := gameNumber.

	sessionLosses := sessionLosses + 1.
	totalLosses := totalLosses + 1.
	lossesWithReplay := lossesWithReplay + 1.
	currentType = #losses
		ifTrue: [currentCount := currentCount + 1]
		ifFalse: 
			[currentCount := 1.
			currentType := #losses].
	self updateStreak.
	self changed