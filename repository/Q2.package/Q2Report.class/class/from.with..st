as yet unclassified
from: aReportDefinition with: aFilter
	| report |
	report := self new.
	report reportDefinition: aReportDefinition.
	report filter: aFilter.
	^report