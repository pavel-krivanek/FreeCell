undo
captureStateBeforeGrab

	self removeProperty: #stateBeforeGrab.
	self setProperty: #stateBeforeGrab toValue: self capturedState
