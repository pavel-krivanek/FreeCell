actions
promptForSeed
	| ss ii hh |
	
	[hh := board hardness ifNil: [0].
	ss := UIManager default request: 'Pick a game number between 1 and 32000.
or
set the hardness of the next game by typing ''H 30''.
Above 100 is very hard.  Zero is standard game.
Current hardness is: ', hh printString.
		"Let the user cancel."
		ss isEmpty ifTrue: [^ nil].
		ss := ss withoutQuoting.
		ss first asLowercase == $h ifTrue: ["Set the hardness"
			[ii := ss numericSuffix] on: Error do: [ii := 0].
			board hardness: ii.
			^ nil].
		[ii := ss asNumber asInteger] on: Error do: [ii := 0].
		ii between: 1 and: 32000] whileFalse.
	^ ii