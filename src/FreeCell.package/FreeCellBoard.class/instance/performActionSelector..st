private
performActionSelector: actionSymbol 
	(target notNil and: [actionSelector notNil]) 
		ifTrue: [target perform: actionSelector with: actionSymbol]