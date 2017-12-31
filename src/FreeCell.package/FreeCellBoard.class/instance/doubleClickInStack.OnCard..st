actions
doubleClickInStack: aDeck OnCard: aCard

	"if there is an empty free cell, move the card there. otherwise try for an empty stack"

	aCard == aDeck topCard ifFalse: [^self].
	freeCells do: [:freeCell |
		freeCell ifEmpty: [
			self visiblyMove: aCard to: freeCell.
			^ aCard
		]
	].
	stacks do: [ :each |
		each ifEmpty: [
			self visiblyMove: aCard to: each.
			^ aCard
		]
	].
