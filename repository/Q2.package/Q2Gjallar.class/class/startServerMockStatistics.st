start/stop
startServerMockStatistics
"
Useful for testing of Statistics GUI using mock transactions and processes. 
You can change parameters.
You can also load mock stats on the fly but you must logout of gjallar (not quit)
	   after doing so because otherwise the stats code will fail to find the new mock processes
"
	self startServer.
	Q2Session statisticsSessionClass: Q2MockStatsSession.
	Q2MockStatsSession loadDailyStatsForDays: 7 numCases: 200 numTxns: 5  seed: 1234567.