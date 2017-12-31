initialization
makeGameNumberDisplay

	gameNumberDisplay := LedMorph new
		digits: 5;
		extent: (5*10@15).
	^self wrapPanel: gameNumberDisplay label: 'Game #: '