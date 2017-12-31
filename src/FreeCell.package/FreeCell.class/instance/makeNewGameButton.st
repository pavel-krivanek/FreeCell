initialization
makeNewGameButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'New game'
		selector: #newGame