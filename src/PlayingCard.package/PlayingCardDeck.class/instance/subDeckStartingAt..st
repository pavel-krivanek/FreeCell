accessing
subDeckStartingAt: aCard
	| i subDeck |

	i := submorphs indexOf: aCard ifAbsent: [^ aCard].
	i = 1 ifTrue: [^aCard].
	subDeck := PlayingCardDeck new.
	(submorphs copyFrom: 1 to: i-1) do:
			[:m | m class = aCard class ifTrue: [subDeck addMorphBack: m]].
	^subDeck.
	