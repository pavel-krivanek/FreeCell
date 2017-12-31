layout
cardCell

	^PlayingCardDeck new
		layout: #pile; 
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		enableDragNDrop;
		color: Color transparent;
		borderColor: (Color gray alpha: 0.5);
		borderWidth: 2;
		layoutBounds: (0@0 extent: PlayingCardMorph width @ PlayingCardMorph height);
		yourself