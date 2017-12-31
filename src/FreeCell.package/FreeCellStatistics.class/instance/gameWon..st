actions
gameWon: gameNumber
	sessionWins := sessionWins + 1.
	totalWins := totalWins + 1.
	gameNumber = lastGameWon ifFalse:
		[gameNumber = lastGameLost ifTrue:
			["Finally won a game by replaying"
			lossesWithReplay := lossesWithReplay - 1].
		winsWithReplay := winsWithReplay + 1].
	lastGameWon := gameNumber.
	currentType = #wins
		ifTrue: [currentCount := currentCount + 1]
		ifFalse: [currentCount := 1.
				currentType := #wins].
	self updateStreak.
	self changed