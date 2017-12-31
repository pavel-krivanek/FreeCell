initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	self listDirection: #topToBottom;
	  hResizing: #shrinkWrap;
	  vResizing: #rigid;
	  height: 500;
	  layout