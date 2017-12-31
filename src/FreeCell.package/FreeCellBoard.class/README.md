The model of a freecell game.  Holds the stacks of cards.
cardDeck		
lastCardDeck		
freeCells		
homeCells		
stacks		array of CardDecks of the columns of cards.
----
Hardness: a number from 1 to 10000.  
	After dealing, count down the number.  For each count, go to next column, pick a ramdom card (with same generator as deck) and move it one place in its stack.  This is a kind of bubble sort.  Interesting that the slowness of bubble sort is a plus -- gives fine gradation in the hardness.
	Moving a card:  Move red cards to deep half, black to shallow (or vice versa).  Within a color, put low cards deep and high cards shallow.  
	If speed is an issue, move several steps at once, decrementing counter. 
	
	(May make it easier?  If running columns, need a way to make harder in other ways.)