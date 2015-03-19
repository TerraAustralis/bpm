html-tables
table: objects heads: heads block: aBlock
	"Add a table. Efficient implementation but the extraction
	block <aBlock> can not use the builder."

	self table: [
		self heads: heads.
		self tableBody: [
			objects do: [:obj |
				self tableRow: [
					(aBlock value: obj) do: [:val |
						self tableData: val asString ]
				]
			]
		]
	]