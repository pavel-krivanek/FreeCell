private
visiblyMove: aCard to: aCell
	| p1 p2 nSteps |
	self inAutoMove ifFalse: [self captureStateBeforeGrab].
	owner owner addMorphFront: aCard.
	p1 := aCard position.
	p2 := aCell position.
	nSteps := 10.
	1 to: nSteps-1 do: "Note final step happens with actual drop"
		[:i | aCard position: ((p2*i) + (p1*(nSteps-i))) // nSteps.
		self world displayWorld].
	aCell acceptDroppingMorph: aCard event: nil