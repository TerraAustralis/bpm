initialize-release
initializeReportDefinitions
	reportDefinitions := SortedCollection sortBlock: [:a :b | a name asUppercase < b name asUppercase].