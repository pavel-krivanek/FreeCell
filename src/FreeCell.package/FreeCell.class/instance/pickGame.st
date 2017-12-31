actions
pickGame
	| seed |
	seed := self promptForSeed.
	seed isNil ifTrue: [^ self].
	self newGameNumber: seed.
	state := #pickGame