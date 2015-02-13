as yet unclassified
casesPerDaySample
	| startingDay stats calculatedNumbers |
	
	 "mock data"
	startingDay := Date now.
	calculatedNumbers := #(5 6 3 6 7 8 9 3 3 2 11 10).

	stats := self statsCache statsFor: #casesPerDay. 

	stats add: ( calculatedNumbers collect: [ :each | | entry | 
		entry := Q2StatisticsSimpleData new date: startingDay ; value: each.
		startingDay := startingDay addDays:1.
		entry ] ).