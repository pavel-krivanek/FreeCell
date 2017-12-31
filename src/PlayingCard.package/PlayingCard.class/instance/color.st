all
color
	CachedDepth = 1 ifTrue: [^ Color black].
	CachedDepth = 2 ifTrue: [^ Color perform: (#(black gray gray black) at: suitNo)].
	^ Color perform: (#(black red red black) at: suitNo)