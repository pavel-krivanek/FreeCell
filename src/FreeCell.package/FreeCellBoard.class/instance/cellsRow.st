layout
cellsRow
	| row |

	row := (AlignmentMorph newRow)
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		color: Color transparent;
		addAllMorphs: self freeCells;
		addMorphBack: self cellsRowSpacer;
		addAllMorphs: self homeCells;
		yourself.
	^row