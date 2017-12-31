layout
stacksRow
	| row |

	row := (AlignmentMorph newRow)
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		wrapCentering: #topLeft;
		cellPositioning: #topLeft;
		color: Color transparent;
		yourself.
	self stacks do: [:stack |
		row 
			addMorphBack: AlignmentMorph newVariableTransparentSpacer;
			addMorphBack: stack].
	row addMorphBack: AlignmentMorph newVariableTransparentSpacer.
	^row