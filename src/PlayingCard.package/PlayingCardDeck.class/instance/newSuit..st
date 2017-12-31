initialization
newSuit: suit
	| cards |
	cards := OrderedCollection new: 13.
	1 to: 13 do: [:cardNo | cards add: (PlayingCardMorph the: cardNo of: suit)].
	self addAllMorphs: cards.
	^self