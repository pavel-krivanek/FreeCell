initialization
makeControls

	^self makeControlBar
		addMorph: AlignmentMorph newVariableTransparentSpacer;
		addMorph: self makeHelpButton;
		addMorph: self makeQuitButton;
		addMorph: self makeStatisticsButton;
		addMorph: self makeGameNumberDisplay;
		addMorph: self makePickGameButton;
		addMorph: self makeSameGameButton;
		addMorph: self makeNewGameButton;
		addMorph: self makeElapsedTimeDisplay;
		addMorph: self makeCardsRemainingDisplay;
		yourself.