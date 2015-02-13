as yet unclassified
createFortykFile

|f s |
f _ FileStream newFileNamed: 'fortyk.txt'.
f nextPutAll: 'STR	STR';cr.
40000 timesRepeat: [
	s _ String streamContents: [:str |
		20 atRandom timesRepeat: [
			str nextPut: 'abcdefghijklmnopqrstuvwxyzåäöABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ1029384756' atRandom]].
	f nextPutAll: s; tab; nextPutAll: s,s;cr].
f close