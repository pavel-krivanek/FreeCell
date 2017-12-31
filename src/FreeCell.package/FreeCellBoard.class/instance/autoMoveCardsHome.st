private
autoMoveCardsHome
	| first |

	first := false.
	(self stacks, self freeCells) do: [:deck |
		self homeCells do: [ :homeCell |
			deck hasCards ifTrue: [
				(homeCell repelCard: deck topCard) ifFalse: [
					(self isPlayableCardInHomeCells: deck topCard) ifTrue: [
						first ifFalse: [ " trigger autoMoving event on first move."
							first := true.
							self performActionSelector: #autoMovingHome
						].
						self visiblyMove: deck topCard to: homeCell.
					]
				]
			]
		]
	].

