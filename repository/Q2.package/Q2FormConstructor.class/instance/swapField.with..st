as yet unclassified
swapField: fld1 with: fld2
	| i j |
	i := fields indexOf: fld1.
	j := fields indexOf: fld2.
	fields swap: i with: j.