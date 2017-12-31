user interface
makeOkButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'OK'
		selector: #ok