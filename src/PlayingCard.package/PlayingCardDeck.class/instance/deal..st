shuffling/dealing
deal: anInteger

	^(1 to: anInteger) collect: [:i | self deal]