accessing
board

	board ifNil: 
		[board := FreeCellBoard new
			target: self;
			actionSelector: #boardAction:].
	^board