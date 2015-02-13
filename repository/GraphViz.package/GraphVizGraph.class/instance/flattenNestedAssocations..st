private
flattenNestedAssocations: association

	 | flattened currentNode associations |

	flattened _ OrderedCollection new.
	currentNode _ association.

	[currentNode isVariableBinding] whileTrue: 
		[flattened add: currentNode value.
		currentNode _ currentNode key].

	flattened add: currentNode.
	flattened _ flattened reversed.

	associations _ OrderedCollection new.
	1 to: flattened size - 1 do: [:i | associations add: (flattened at: i) -> (flattened at: i + 1)].

	^ associations