user interface
makeControls
	| row |

	row := AlignmentMorph newRow.
	row
		wrapCentering: #center; cellPositioning: #leftCenter;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		color: self color;
		borderWidth: 2;
		borderColor: #inset;
		addMorphBack: self makeOkButton;
		addMorphBack: self makeResetButton.
	^row.