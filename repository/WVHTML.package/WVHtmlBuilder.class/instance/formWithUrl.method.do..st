forms
formWithUrl: urlString method: methodString do: formBlock
	self attributes
		action: urlString;
		method: methodString.
	self openTag: 'form'.
	formBlock value.
	^self close