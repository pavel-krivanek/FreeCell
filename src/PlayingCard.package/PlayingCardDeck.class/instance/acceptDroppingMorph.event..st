layout
acceptDroppingMorph: aMorph event: evt 

	target inAutoMove
			ifFalse: [target removeProperty: #stateBeforeGrab].
		self addMorph: aMorph.
		aMorph hasSubmorphs
			ifTrue: ["Just dropped a sub-deck of cards"
				aMorph submorphs
					reverseDo: [:m | self addMorphFront: m]].
		(target notNil
				and: [cardDroppedSelector notNil])
			ifTrue: [target perform: cardDroppedSelector]