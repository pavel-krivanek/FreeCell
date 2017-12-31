initialization
makeHelpButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'Help'
		selector: #help