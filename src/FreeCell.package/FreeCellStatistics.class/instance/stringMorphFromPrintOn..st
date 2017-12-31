user interface
stringMorphFromPrintOn: aSelector
	
	^StringMorph new 
		contents: (String streamContents: [:s | self perform: aSelector with: s]);
		yourself.