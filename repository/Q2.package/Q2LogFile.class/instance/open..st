as yet unclassified
open: fileName
	file := FileDirectory default forceNewFileNamed: fileName.
	file setToEnd.
	self writeLine: '---------------------------'