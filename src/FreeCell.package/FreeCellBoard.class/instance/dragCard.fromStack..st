actions
dragCard: aCard fromStack: aCardDeck
	| i cards |

	cards := aCardDeck cards.
	i := cards indexOf: aCard ifAbsent: [^ nil].
	i > (self maxDraggableStackSize: false) ifTrue: [^ nil].
	[i > 1] whileTrue:
		[(aCardDeck inStackingOrder: (cards at: i-1) 
					onTopOf: (cards at: i)) ifFalse: [^ nil].
		i := i-1].
	^ aCard