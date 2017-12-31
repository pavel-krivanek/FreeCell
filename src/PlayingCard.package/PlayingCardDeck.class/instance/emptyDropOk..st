dropping/grabbing
emptyDropOk: aPlayingCard

	emptyDropPolicy = #any 			ifTrue: [^true].
	emptyDropPolicy = #inOrder			ifTrue: [^self inStackingOrder: aPlayingCard].
	emptyDropPolicy = #anyClub 		ifTrue: [^aPlayingCard suit = #club].
	emptyDropPolicy = #anyDiamond		ifTrue: [^aPlayingCard suit = #diamond].
	emptyDropPolicy = #anyHeart		ifTrue: [^aPlayingCard suit = #heart].
	emptyDropPolicy = #anySpade		ifTrue: [^aPlayingCard suit = #spade].