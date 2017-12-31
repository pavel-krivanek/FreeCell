all
copyTopToBottomHalf
	"The bottom half is a 180-degree rotation of the top half (except for 7)"
	| topHalf corners |
	topHalf := 0@0 corner: cardForm width@(cardForm height+1//2).
	corners := topHalf corners.
	(WarpBlt toForm: cardForm)
		sourceForm: cardForm;
		combinationRule: 3;
		copyQuad: ((3 to: 6) collect: [:i | corners atWrap: i])
		toRect: (CardSize - topHalf extent corner: CardSize).
	