private
isPlayableCardInHomeCells: aPlayingCard
	| unplayedOther topsThisColor topsOtherColor unplayedSame | 
	" are all cards that could be played on this card if it stayed on the stack present in the
	home cells?"

	aPlayingCard cardNumber <= 2 ifTrue: [^true].	"special case for Aces and 2's"
	topsThisColor := OrderedCollection new.
	topsOtherColor := OrderedCollection new.
	self homeCells do: [ :deck |
		deck hasCards ifTrue: [
			(aPlayingCard suitColor == deck topCard suitColor 
					ifTrue: [topsThisColor] ifFalse: [topsOtherColor]) add: deck topCard cardNumber.
		]
	].
	unplayedOther := topsOtherColor size < 2 ifTrue: [1] ifFalse: [topsOtherColor min + 1].
	unplayedSame := topsThisColor size < 2 ifTrue: [1] ifFalse: [topsThisColor min + 1].
	unplayedOther > (aPlayingCard cardNumber - 1) ifTrue: [^true].
	unplayedOther < (aPlayingCard cardNumber - 1) ifTrue: [^false].
	^unplayedSame >= (unplayedOther - 1)
