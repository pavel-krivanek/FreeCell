user interface
display
	| panel |

	(window notNil and: [window owner notNil]) ifTrue: [window activate. ^nil].
	panel := AlignmentMorph newColumn.
	panel
		wrapCentering: #center; cellPositioning: #topCenter;
		hResizing: #rigid;
		vResizing: #rigid;
		extent: 250@150;
		color: self color;
		addMorphBack: self makeStatistics;
		addMorphBack: self makeControls.
	window := panel openInWindowLabeled: 'FreeCell Statistics'.