tests
testTwoIgnoredVariables
	| anObject result aClass |
	aClass := self newClassWithInstanceVariableNames: 'a b c'.
	aClass class duringTestCompileSilently: 'fuelIgnoredInstanceVariableNames ^#(a c)'.
	anObject := aClass new
		instVarAt: 1 put: $A;
		instVarAt: 2 put: $B;
		instVarAt: 3 put: $C;
		yourself.

	result := self resultOfSerializeAndMaterialize: anObject.

	self assert: nil equals: (result instVarAt: 1).
	self assert: $B equals: (result instVarAt: 2).
	self assert: nil equals: (result instVarAt: 3)