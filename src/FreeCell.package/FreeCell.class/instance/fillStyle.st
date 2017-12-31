visual properties
fillStyle

	myFillStyle ifNil: [
		myFillStyle := GradientFillStyle ramp: {
			0.0 -> self colorNearTop. 
			1.0 -> self colorNearBottom
		}.
	].
	^myFillStyle
		origin: self position;
		direction: (self width // 2)@self height
