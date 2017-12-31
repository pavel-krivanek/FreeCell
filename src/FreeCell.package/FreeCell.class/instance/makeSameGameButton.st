initialization
makeSameGameButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'Same game'
		selector: #sameGame