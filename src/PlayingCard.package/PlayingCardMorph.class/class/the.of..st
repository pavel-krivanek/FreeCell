access
the: cardNumber of: suit

	^ self new 
		image: (PlayingCard the: cardNumber of: suit) cardForm;
		cardNumber: cardNumber suitNumber: (self suits indexOf: suit)