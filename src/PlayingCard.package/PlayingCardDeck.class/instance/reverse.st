shuffling/dealing
reverse
	self invalidRect: self fullBounds.
	submorphs := submorphs reversed.
	self layoutChanged.