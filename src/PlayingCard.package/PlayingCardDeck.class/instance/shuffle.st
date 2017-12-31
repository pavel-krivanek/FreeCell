shuffling/dealing
shuffle
	self invalidRect: self fullBounds.
	submorphs := submorphs shuffleBy: (Random new seed: seed).
	self layoutChanged.