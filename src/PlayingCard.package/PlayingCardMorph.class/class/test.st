testing
test    
	"Display all cards in the deck"
	"MessageTally spyOn: [20 timesRepeat: [PlayingCardMorph test]]"
	| table row |
	table := AlignmentMorph newColumn.
	self suits do: [:suit | 
		row := AlignmentMorph newRow.
		table addMorph: row.
		1 to: 13 do: [:cn |
			row addMorph: 
			(PlayingCardMorph the: cn of: suit)]].
	table openInWorld.