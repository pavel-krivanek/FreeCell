user interface
makeResetButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'Reset'
		selector: #reset