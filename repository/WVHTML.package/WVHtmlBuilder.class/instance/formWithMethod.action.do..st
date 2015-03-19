html
formWithMethod: methodString action: actionUrl do: aBlock
	self attributes method: methodString;
			action: actionUrl.
	self openTag: 'form'.
	aBlock value.
	^self close