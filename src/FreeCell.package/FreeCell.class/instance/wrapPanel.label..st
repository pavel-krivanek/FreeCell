private
wrapPanel: anLedPanel label: aLabel
	"wrap an LED panel in an alignmentMorph with a label to its left"

	| a |
	a := AlignmentMorph newRow
		wrapCentering: #center; cellPositioning: #leftCenter;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 0;
		layoutInset: 5;
		color: Color transparent.
	a addMorph: anLedPanel.
	a addMorph: (StringMorph contents: aLabel). 
	^ a
