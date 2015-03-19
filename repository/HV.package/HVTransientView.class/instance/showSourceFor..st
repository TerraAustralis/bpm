utilities
showSourceFor: selector
	"Show the source for given selector."

	| b |
	b := self builder.
	^b start; h2: ('Source for ', self class name, '>>', selector);
		pre: ((self fixForHtml: (self class sourceMethodAt: selector) asString)
				copyReplaceAll: '_' with: ':=');
		end; yourself