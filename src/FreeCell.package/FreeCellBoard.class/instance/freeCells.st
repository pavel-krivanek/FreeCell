layout
freeCells

	^freeCells ifNil: [freeCells := (1 to: 4) collect: [:i | self freeCell]]