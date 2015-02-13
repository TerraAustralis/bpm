rendering
from: values select: aBlock max: max
	"Do a select but return early if we reach more than max number of elements."

	| result |
	result := OrderedCollection new.
	values do: [:each |
		(aBlock value: each) ifTrue: [
			result size = max ifTrue: [
				result add: '(first ', max printString, ' found in ', values size printString, ')'.
				^result].
			result add: each]].
	^result