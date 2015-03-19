hacks
srcLink
	"Adds a link showing the source code of the current method.
	Used for examples etc."

	| url |
	url := view urlStream pathWithPrefix: #src.
	url = '/src' ifTrue: [url := '/srcdefault'].
	^self attributeAt: 'size' put: '-1';
		tag: 'font' do: [
			self link: url text: 'See source for this page']