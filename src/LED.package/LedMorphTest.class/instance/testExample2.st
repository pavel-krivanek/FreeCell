tests
testExample2

	self shouldnt: [LedMorph new  chars: 10; string:'           I must get a life';flash:true;scrollLoop:true; openInWorld; delete] raise: Error