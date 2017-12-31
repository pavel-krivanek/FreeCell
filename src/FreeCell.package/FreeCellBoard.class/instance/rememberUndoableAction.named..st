undo
rememberUndoableAction: aBlock named: caption

	self inAutoMove ifTrue: [^ aBlock value].
	^ super rememberUndoableAction: aBlock named: caption