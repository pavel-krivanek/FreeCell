dropping/grabbing
slideBackToFormerSituation: evt

	super slideBackToFormerSituation: evt.
	self board removeProperty: #stateBeforeGrab.
	self hasSubmorphs ifTrue:
		["Just cancelled a drop of multiple cards -- have to unload submorphs"
		self submorphs reverseDo: [:m | owner addMorphFront: m]].
