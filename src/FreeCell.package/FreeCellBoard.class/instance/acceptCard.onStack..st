actions
acceptCard: aCard onStack: aDeck
	" assumes that number of cards was check at drag time, need to reduce count if dropping
	into an empty stack"
	aCard hasSubmorphs 
		ifTrue: [
			aDeck ifEmpty: [
				(aCard submorphCount+1) > (self maxDraggableStackSize: true)
					ifTrue: [^false]]]
		ifFalse: [^ nil].
	^nil.

