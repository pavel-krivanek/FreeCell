initialization
makePickGameButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'Pick game'
		selector: #pickGame