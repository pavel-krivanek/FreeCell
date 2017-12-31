all
blankCard 

	CachedDepth = Display depth ifFalse:
		[CachedDepth := Display depth.
		CachedBlank := Form extent: CardSize depth: CachedDepth.
		CachedBlank fillWhite; border: CachedBlank boundingBox width: 1.
		CachedBlank fill: (0@0 extent: 2@2) fillColor: Color transparent.  "Round the top corners"
		CachedBlank fill: (1@1 extent: 1@1) fillColor: Color black.
		CachedBlank fill: (CachedBlank width-2@0 extent: 2@2) fillColor: Color transparent.
		CachedBlank fill: (CachedBlank width-2@1 extent: 1@1) fillColor: Color black].
	^ CachedBlank