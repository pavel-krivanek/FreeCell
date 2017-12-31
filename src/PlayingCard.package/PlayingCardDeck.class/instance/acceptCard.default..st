dropping/grabbing
acceptCard: aCard default: aBoolean 
	"if target and acceptCardSelector are both not nil, send to target, if not  
	nil answer  
	else answer aBoolean"
	"Rewrote this a little (SmallLint calls this 'intention revealing')-th"
	^ (target isNil or: [acceptCardSelector isNil])
		ifTrue: [aBoolean]
		ifFalse: [(target
				perform: acceptCardSelector
				with: aCard
				with: self)
				ifNil: [aBoolean]]