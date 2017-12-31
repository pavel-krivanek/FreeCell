initialization
resetStacks
	| card stackStream stack |

	stacks do: [:deck | deck removeAllCards].
	stackStream := ReadStream on: stacks.
	[card := cardDeck deal.
	card notNil] whileTrue: [
		stack := stackStream next ifNil: [stackStream reset; next].
		stack addCard: card].
