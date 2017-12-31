initialization
openInWindowLabeled: aString inWorld: aWorld

	^(super openInWindowLabeled: aString inWorld: aWorld)
		model: self;
		yourself