verifying
verifyFromParts: anArrayOfMes
"sum stats values from anArrayOfMes and verify that they match my totals for these stats."

	| partsCreatedCases partsResponsibleSetCases partsCaseGrowth partsTimeToSetResponsible |

	partsCreatedCases := partsResponsibleSetCases := partsCaseGrowth := 0.
	partsTimeToSetResponsible := Duration zero.
	anArrayOfMes do: [:each |
		partsCreatedCases := partsCreatedCases + each numCreatedCases.
		partsResponsibleSetCases := partsResponsibleSetCases + each numResponsibleSetCases.
		partsCaseGrowth := partsCaseGrowth + each caseGrowth.
		partsTimeToSetResponsible := partsTimeToSetResponsible + each totalTimeToSetResponsible.
		].

	(numCreatedCases = partsCreatedCases) ifFalse: [
		self error: 'Values for number of created cases do not match'].
	(numResponsibleSetCases = partsResponsibleSetCases) ifFalse: [
		self error: 'Values for number of times responsible set for the first time do not match'].
	(self caseGrowth = partsCaseGrowth) ifFalse: [
		self error: 'Values for growth in number of cases values do not match'].
	(totalTimeToSetResponsible = partsTimeToSetResponsible) ifFalse: [
		self error: 'Values for totat time to set responsible do not match'].