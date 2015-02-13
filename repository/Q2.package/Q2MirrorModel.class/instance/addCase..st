as yet unclassified
addCase: aCase
	"All cases are added to the system through this central point because we
	need to allocate a unique id (if not done already) and to add it to the
	global collection of cases used for global searches. All mirrors of Q2 have
	their own counter starting from 1. This means the next number is not the
	same thing as 'cases size + 1'."

	aCase name ifNil: [aCase name: (mirrorDefinition prefix ifNil: ['']), caseCounter next asString].
	self addObjectById: aCase.
	^cases add: aCase