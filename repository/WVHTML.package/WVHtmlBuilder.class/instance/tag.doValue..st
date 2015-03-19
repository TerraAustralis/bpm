basic markup
tag: aString doValue: aBlock
	"Execute the block inside the tag. The value of the block is ignored,
	in contrast to #tag:do: so the block code must use the builder itself."

	self openTag: aString.
	aBlock value.
	^self close