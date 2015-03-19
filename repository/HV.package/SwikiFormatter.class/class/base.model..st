instance creation
base: anUrl model: aModel

	| formatter |
	formatter := self new.
	formatter base: anUrl model: aModel.
	^formatter