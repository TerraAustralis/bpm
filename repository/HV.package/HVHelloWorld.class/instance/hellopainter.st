urls
hellopainter
	"A version using the new (soon preferred) high level painter
	over the low level canvas API."

	| painter  |
	painter := self painter.
	painter paint: [
		painter h1 text: 'Hello world!'.
		painter p text: 'It is an even newer day.'].
	^painter