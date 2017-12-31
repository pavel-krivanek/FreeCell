layout
freeCell
	| freeCell |
	freeCell := self cardCell.
	freeCell stackingPolicy: #single;
	 emptyDropPolicy: #any;
	 target: self;
	 cardDroppedSelector: #cardMoved;
	 acceptCardSelector: #acceptSingleCard:on:.
	^ freeCell