actions
boardAction: actionSymbol

	actionSymbol = #cardMovedHome 	ifTrue: [^self cardMovedHome].
	actionSymbol = #autoMovingHome	ifTrue: [^self autoMovingHome].