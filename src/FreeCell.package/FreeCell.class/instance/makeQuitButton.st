initialization
makeQuitButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'Quit'
		selector: #quit
