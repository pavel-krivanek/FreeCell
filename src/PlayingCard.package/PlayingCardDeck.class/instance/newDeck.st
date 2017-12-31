initialization
newDeck
	| cards |
	cards := OrderedCollection new: 52.
	PlayingCardMorph suits 
		do: [:suit | 1 to: 13
			do: [:cardNo | cards add: (PlayingCardMorph the: cardNo of: suit)]].
	self addAllMorphs: cards.
	^self