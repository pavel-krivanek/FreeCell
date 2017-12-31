layout
homeCells

	^homeCells ifNil: [homeCells := (1 to: 4) collect: [:i | self homeCell]]