as yet unclassified
initialize
	super initialize.
	formatBlock := [:x | (field formatValueFrom: x) truncateWithElipsisTo: smallSize].
	sortBlock := [:a :b | field is: a lessThanOrEqualTo: b].
	smallSize := 100.
	valueBlock := [:row | field tableValueFromTarget: row]