utils
check
	"Simple check that a workflow has not turned broken.
	Can be refined with more checks."

	stages do: [:stage |
		stage transitions do: [:tr |
			((stages includes: tr from) and: [stages includes: tr to]) ifFalse: [self error: 'Bad transition from: ', tr from printString , ' to ', tr to printString, ':', tr name, '(', (tr from transitions indexOf: tr) printString, ')']]]