html-forms-queries
ifSubmit: aBlock
	"If it is a POST or a GET with fields we run the block."

	request isPostRequest ifTrue:[^aBlock value].
	request isGetRequest ifTrue:[request getFields isEmpty ifFalse:[^aBlock value]]