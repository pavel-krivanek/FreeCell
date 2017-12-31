event handling
firstClickTimedOut: evt 
	| root popUp |
	root := owner rootForGrabOf: self.
	root isNil 
		ifTrue: 
			["Display hidden card in front"

			popUp := self copy.
			self board owner owner addMorphFront: popUp.
			self world displayWorld.
			(Delay forMilliseconds: 750) wait.
			popUp delete]
		ifFalse: [evt hand grabMorph: root]