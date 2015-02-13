as yet unclassified
renderColumn: aColumn row: aRow on: html
	| text color td |
	color := aColumn color: aRow.
	aColumn canRender ifTrue: [
		^color isNil ifTrue: [ html tableData: [aColumn renderValue: aRow on: html] ]
		ifFalse: [ html tableData attributeAt:'bgColor' put: color; with: [aColumn renderValue: aRow on: html]]
	].
	text := aColumn textForRow: aRow.
	text isEmpty ifTrue: [ text := ' ' ].
	td := html tableData.
	td tooltip: (aColumn tooltipForRow: aRow on: html).
	color ifNotNil: [ td attributeAt:'bgColor' put: color ].
	td with: [
		aColumn canChoose
			ifFalse: [ html text: text ]
			ifTrue: [
				html anchor
					callback: [ self chooseRow: aRow column: aColumn ];
					with: text ] ]