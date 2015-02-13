instance creation
base: anUrl modelProvider: aModel

	"if the model is in the db, It is better for model provider to access the model when we need  it
	and not now"

	| formatter |
	formatter := self new.
	formatter base: anUrl modelProvider: aModel.
	^formatter