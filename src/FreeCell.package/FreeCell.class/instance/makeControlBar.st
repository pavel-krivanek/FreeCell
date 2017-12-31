initialization
makeControlBar

	^AlignmentMorph newRow
		color: self colorNearBottom;
		borderColor: #inset;
		borderWidth: 2;
		layoutInset: 0;
		hResizing: #spaceFill; vResizing: #shrinkWrap; wrapCentering: #center; cellPositioning: #leftCenter;
		yourself.