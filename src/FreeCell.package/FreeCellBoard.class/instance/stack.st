card in a stack
stack
	^ PlayingCardDeck new color: Color transparent;
	 layout: #stagger;
	 listDirection: #topToBottom;
	 enableDragNDrop;
	 stackingPolicy: #altStraight;
	 stackingOrder: #descending;
	 emptyDropPolicy: #any;
	 target: self;
	 cardDroppedSelector: #cardMoved;
	 cardDraggedSelector: #dragCard:fromStack:;
	 acceptCardSelector: #acceptCard:onStack:;
	 cardDoubleClickSelector: #doubleClickInStack:OnCard: