dropping/grabbing
inStackingOrder: aCard event: evt

	self hasSubmorphs 
		ifTrue: [^ self inStackingOrder: aCard onTopOf: self topCard]
		ifFalse: [stackingOrder = #ascending ifTrue: [^ aCard cardNumber = 1].
				stackingOrder = #descending ifTrue: [^ aCard cardNumber = 13]].
	^ false.