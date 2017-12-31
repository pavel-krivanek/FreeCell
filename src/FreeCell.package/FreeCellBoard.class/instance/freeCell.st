layout
freeCell
	| freeCell |
	freeCell := self cardCell.
	freeCell stackingPolicy: #single;
	 emptyDropPolicy: #any;
	 target: self;
	hResizing: #rigid;
	 cardDroppedSelector: #cardMoved;
	 acceptCardSelector: #acceptSingleCard:on:.
	^ freeCell