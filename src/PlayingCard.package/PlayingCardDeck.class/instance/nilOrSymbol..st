private
nilOrSymbol: aSymbolOrString

	(nil = aSymbolOrString or:
	 ['nil' = aSymbolOrString or:
	 [aSymbolOrString isEmpty]])
		ifTrue: [^nil]
		ifFalse: [^aSymbolOrString asSymbol]