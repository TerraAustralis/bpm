*Q2GemStone
veryDeepCopy
	"GemStone-specific extension.
	Use GemStone's recursive #deepCopy and provide similar to Squeak behavior for Q2 domain classes 
	see Q2Object>>_deepCopyWith:
	"
	| copy copier |
	copier := (Q2GemStoneDeepCopier new).
	copy := self veryDeepCopyWith: copier.
	copier fixup.
	^ copy