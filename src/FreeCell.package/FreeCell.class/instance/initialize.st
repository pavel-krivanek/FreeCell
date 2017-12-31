initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	Statistics newSession.
	autoMoveRecursionCount := 0.
	self listDirection: #topToBottom.
	self wrapCentering: #center;
		 cellPositioning: #topCenter.
	self vResizing: #shrinkWrap.
	self hResizing: #shrinkWrap.
	self
		 addMorph: self makeControls;
		 addMorph: self board;
		 newGame