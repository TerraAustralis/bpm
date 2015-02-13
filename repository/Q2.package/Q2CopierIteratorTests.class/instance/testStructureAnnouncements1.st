as yet unclassified
testStructureAnnouncements1
	" I check a recursive array's structure "

	| array |
	array := {1. {2. 'xyz'}. 4}.
	array second at: 1 put: array. 
	self runStructureTestOn: array.