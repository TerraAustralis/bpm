methods
platformIsGemStone
	
	^[System respondsTo: #sessionCanCommit] on: Error do: [false]