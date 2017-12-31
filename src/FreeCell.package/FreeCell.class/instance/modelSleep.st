user interface
modelSleep
	"When fixing #contains: calls beware of reinventing #includes:"
	(#(newGame sameGame pickGame won lost ) includes: state)
		ifTrue: [elapsedTimeDisplay pause]