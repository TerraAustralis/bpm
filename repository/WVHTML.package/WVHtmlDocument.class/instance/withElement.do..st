stack operations
withElement: anElement do: aBlock
	"We don't add the element to the one on top of the stack.
	This way we can temporarily use the builder on an element
	already in the document."

	stack add: anElement.
	aBlock value.
	^self popElement