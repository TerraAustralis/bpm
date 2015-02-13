transactions
performExtraTxnsFor: aFormValue fieldList: fieldList
	"We create either add, remove or modify txns for the links.
	This is decided by comparing the edited list of links with the
	one still in the case."

	| links oldLinks toAdd old |
	oldLinks := aFormValue targetGet: fieldList.
	links := aFormValue valueAt: fieldList.
	links ifNil: [^self "not edited"].
	links := links select: [:l | l isValid].
	(oldLinks difference: links) do: [:each | self model removeLink: each].
	toAdd := links difference: oldLinks.
	toAdd do: [:each | self model addLink: each].
	links do: [:modified |
		(toAdd includes: modified) ifFalse: [
			old := oldLinks detect: [:l | l = modified] ifNone: [self error: 'Can not happen!'].
			old to ~~ modified to
				ifTrue: [self model removeLink: old; addLink: modified]
				ifFalse: [old type ~~ modified type
							ifTrue: [self model modifyLink: modified]]]]