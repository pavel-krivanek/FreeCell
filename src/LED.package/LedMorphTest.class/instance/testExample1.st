tests
testExample1

	self shouldnt: [ LedMorph new string:'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'; openInWorld; delete  ] raise: Error