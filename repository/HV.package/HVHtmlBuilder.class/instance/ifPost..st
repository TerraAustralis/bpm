html-forms-queries
ifPost: aBlock
	"If it is a POST we run the block.
	Better to use #ifPressed: on the submit button." 

	^self isPost ifTrue:[aBlock value]