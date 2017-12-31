all
the: cardNo of: suitOrNumber

	^ self new setCardNo: cardNo
		suitNo: (suitOrNumber isNumber
				ifTrue: [suitOrNumber]
				ifFalse: [#(clubs diamonds hearts spades) indexOf: suitOrNumber])
		cardForm: (Form extent: CardSize depth: Display depth)