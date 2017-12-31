layout
cellsRowSpacer
	| column |

	column := (AlignmentMorph newColumn)
		vResizing: #rigid;
		hResizing: #rigid;
		color: Color transparent;
		extent: PlayingCardMorph cardSize;
		yourself.
	^column