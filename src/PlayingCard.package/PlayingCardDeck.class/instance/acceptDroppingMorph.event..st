layout
acceptDroppingMorph: aMorph event: evt 
	self addMorph: aMorph.
	aMorph hasSubmorphs 
				ifTrue: 
					["Just dropped a sub-deck of cards"
					aMorph submorphs reverseDo: [:m | self addMorphFront: m]].
		