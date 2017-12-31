initialization
initialize
	super initialize.
	self cellPositioning: #topLeft.
	self reverseTableCells: true.
	self layout: #grid.
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	borderWidth := 0.
	self layoutInset: 0.
	stackingPolicy := #stagger.
	stackingOrder := #ascending.
	emptyDropPolicy := #any.
	self newSeed.
	^self