layout
homeCell
	| homeCell |
	homeCell := self cardCell.
	homeCell stackingPolicy: #straight;
	 stackingOrder: #ascending;
	 emptyDropPolicy: #inOrder;
	 target: self;
	 cardDroppedSelector: #cardMovedHome;
	 cardDraggedSelector: #dragCard:fromHome:;
	 acceptCardSelector: #acceptSingleCard:on:.
	^ homeCell