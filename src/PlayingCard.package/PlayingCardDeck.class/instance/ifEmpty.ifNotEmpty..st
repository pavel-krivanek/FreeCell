dropping/grabbing
ifEmpty: aBlock1 ifNotEmpty: aBlock2

	self hasSubmorphs not 
		ifTrue: [^aBlock1 value]
		ifFalse: [^aBlock2 value]