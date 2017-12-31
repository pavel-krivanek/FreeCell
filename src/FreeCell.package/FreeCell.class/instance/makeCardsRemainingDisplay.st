initialization
makeCardsRemainingDisplay

	cardsRemainingDisplay := LedMorph new
		digits: 2;
		extent: (2*10@15).
	^self wrapPanel: cardsRemainingDisplay label: 'Cards Left: '