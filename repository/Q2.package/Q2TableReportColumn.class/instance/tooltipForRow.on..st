as yet unclassified
tooltipForRow: row on: html
	^ tooltipBlock ifNotNil: [tooltipBlock value: row value: html]