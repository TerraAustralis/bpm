urls
default
	"This is the default method that is run in an HVHttpView
	when no other method has been named in the url.
	It can also be reached by it's name 'default'."

	| b item count button |
	b := self builder.
	b start; h1: 'Todo list'.
	count := 1.
	item := b postForm; html: 'Add item: '; inputTextSize: 40.
	button := b submit.
	button ifPressed: [model addItem: item value].
	b ol: model items do: [:i |
		b linkLocal: 'removeitem?id=', count fullPrintString text: 'R'.
		b html: ' ', i.
		count := count + 1].
	b endForm; hr; srcLink; end.
	^b