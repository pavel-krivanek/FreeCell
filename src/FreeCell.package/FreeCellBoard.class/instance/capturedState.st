undo
capturedState

	self valueOfProperty: #stateBeforeGrab ifPresentDo: [:st | ^ st].
	^ {	freeCells collect: [:deck | deck submorphs].
		homeCells collect: [:deck | deck submorphs].
		stacks collect: [:deck | deck submorphs] }
