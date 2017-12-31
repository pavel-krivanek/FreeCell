actions
acceptSingleCard: aCard on: aDeck 
	"Home cells and free cells don't accept multiple cards on a home cell, 
	defer to deck for other cases"
	aCard hasSubmorphs
		ifTrue: [^ false]
		ifFalse: [^ nil]