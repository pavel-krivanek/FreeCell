hardness
makeHarder: pile rand: rand toDo: cnt
	| deepColor ind thisPile thisCard otherCard |
	"Move cards in a stack to make it harder.  Pick a card from the pile.  Only consider moving it deeper (toward last of pile)."

	deepColor := stacks first cards last suitColor.
	ind := ((pile cards size - 1) atRandom: rand).	"front card"
	thisPile := pile cards.  "submorphs array. We will stomp it."
	thisCard := thisPile at: ind.
	otherCard := thisPile at: ind+1.

	"Move deepColor cards deeper, past cards of the other color"
	(thisCard suitColor == deepColor) & (otherCard suitColor ~~ deepColor) ifTrue: [
		thisPile at: ind put: otherCard.
		thisPile at: ind+1 put: thisCard.
		^ 0].	"single moves for now.  Make multiple when it's too slow this way"

	"When colors the same, move low numbered cards deeper, past high cards"
	(thisCard suitColor == otherCard suitColor) ifTrue: [
		(thisCard cardNumber < otherCard cardNumber) ifTrue: [
			thisPile at: ind put: otherCard.
			thisPile at: ind+1 put: thisCard.
			^ 0]].	"single moves for now.  Make multiple when it's too slow this way"
	^ 0