accessing
renderButtonsOn: html
	self buttons do: [:assoc |
		(html class == WACanvas) ifTrue: [
			html submitButton callback: assoc value first; text: assoc key]
		ifFalse: [html submitButton text:assoc key; callback: assoc value first; tooltip: assoc value second]]