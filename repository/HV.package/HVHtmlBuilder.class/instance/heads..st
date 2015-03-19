html-tables
heads: heads
	"Add heads to a table that has already been started."

	self tableHead: [
		self tableRow: [
			heads do: [:head |
				self attributeAt: 'align' put: 'left'.
				self tableHeading: head]]]