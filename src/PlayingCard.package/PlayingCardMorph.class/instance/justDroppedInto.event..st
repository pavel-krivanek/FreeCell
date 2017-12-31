dropping/grabbing
justDroppedInto: newOwner event: evt

	(newOwner isKindOf: PlayingCardDeck)
		ifFalse: ["Can't drop a card anywhere but on a deck"
				self rejectDropMorphEvent: evt].
	^super justDroppedInto: newOwner event: evt