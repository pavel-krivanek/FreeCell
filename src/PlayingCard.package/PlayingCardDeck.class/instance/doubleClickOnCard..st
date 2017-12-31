events
doubleClickOnCard: aCard 
	(target notNil and: [cardDoubleClickSelector notNil]) 
		ifTrue: 
			[^target 
				perform: cardDoubleClickSelector
				with: self
				with: aCard]