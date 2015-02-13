as yet unclassified
casesPerDaySample2
"The difference with #casesPerDaySample is, that we creating a separate instance of Q2StatisticsCacheEntry first, without care if it exists in DB or not.
Then, after populating it with data, we just merging it with one, retreived from #statsFor: message sent to Q2StatisticsCache instance.
So, we can produce stats without being connected with DB (of course special care should be taken to match offline calculated values with values in actual database)"

	| startingDay stats calculatedNumbers |
	
	 "mock data"
	startingDay := Date now.
	calculatedNumbers := #(5 6 3 6 7 8 9 3 3 2 11 10).

	stats := Q2StatisticsCacheEntry new kind: #casesPerDay.
	stats add: ( calculatedNumbers collect: [ :each | | entry | 
		entry := Q2StatisticsSimpleData new date: startingDay ; value: each.
		startingDay := startingDay addDays:1.
		entry ] ).

	(self statsCache statsFor: #casesPerDay) append: stats.