rendering
renderViewControlOn: html component: fc

	| key val |
	key := fc getCache key.
	val := fc getCache value.
	fc renderObject: key on: html.
	(self valuesForFieldComponent: fc) size > 1 ifTrue: [
		html text: valueLabel.
		fc renderObject: val on: html]