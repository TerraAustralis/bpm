urls
hellocanvas
	"An even longer version using the lower level canvas API."

	| canvas |
	canvas := self canvas.
	canvas html: [
		canvas head: [canvas title: self title].
		canvas body: [
			canvas h1 text: 'Hello world!'.
			canvas p text: 'It is an even newer day.']].
	 ^canvas