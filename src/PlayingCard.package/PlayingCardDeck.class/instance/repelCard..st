dropping/grabbing
repelCard: aCard 
	stackingPolicy = #none ifTrue: [^ self repelCard: aCard default: true].
	stackingPolicy = #single ifTrue: [^ self ifEmpty: [self repelCard: aCard default: false]
			ifNotEmpty: [true]].
	(stackingPolicy = #altStraight or: [stackingPolicy = #straight])
		ifTrue: [self ifEmpty: [^ self repelCard: aCard default: (self emptyDropNotOk: aCard)]
				ifNotEmpty: [(self inStackingOrder: aCard onTopOf: self topCard)
						ifFalse: [^ self repelCard: aCard default: true]]].
	^ false