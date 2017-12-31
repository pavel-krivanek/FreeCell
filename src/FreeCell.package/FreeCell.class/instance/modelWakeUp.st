user interface
modelWakeUp
	"Maybe less performant but more readable"
	(#(won lost) includes: state)
		ifFalse: [elapsedTimeDisplay resume]