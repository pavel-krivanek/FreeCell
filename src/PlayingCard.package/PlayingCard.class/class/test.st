all
test   
	"Display all cards in the deck"
	"MessageTally spyOn: [20 timesRepeat: [PlayingCard test]]"
	1 to: 13 do: [:i | 1 to: 4 do: [:j |
		(PlayingCard the: i of: (#(clubs diamonds hearts spades) at: j)) cardForm
				displayAt: (i-1*CardSize x)@(j-1*CardSize y)]]