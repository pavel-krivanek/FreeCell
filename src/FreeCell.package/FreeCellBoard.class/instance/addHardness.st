hardness
addHardness
	| cnt rand pileInd pile |
	"post process the layout of cards to make it harder.  See class comment."

	hardness ifNil: [^ self].
	cnt := hardness.
	rand := Random new seed: cardDeck seed.  "Same numbers but different purpose"
	pileInd := 1. 
	[(cnt := cnt - 1) > 0] whileTrue: [
		pile := stacks atWrap: (pileInd := pileInd + 1).
		cnt := cnt - (self makeHarder: pile rand: rand toDo: cnt)].  "mostly 0, but moves cards"