initialization
makeStatisticsButton

	^self
		buildButton: SimpleButtonMorph new
		target: self
		label: 'Statistics'
		selector: #statistics