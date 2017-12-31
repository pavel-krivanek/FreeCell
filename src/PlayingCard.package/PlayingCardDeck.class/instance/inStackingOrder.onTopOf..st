dropping/grabbing
inStackingOrder: aCard onTopOf: cardBelow
	| diff |
	(stackingPolicy = #altStraight and: [aCard suitColor = cardBelow suitColor]) ifTrue: [^ false].
	(stackingPolicy = #straight and: [aCard suit ~= cardBelow suit]) ifTrue: [^ false].
	diff := aCard cardNumber - cardBelow cardNumber.
	stackingOrder = #ascending 	ifTrue: [^ diff = 1].
	stackingOrder = #descending	ifTrue: [^ diff = -1].
	^ false.