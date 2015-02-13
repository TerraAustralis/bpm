class initialization
initializeStatistics: seed
	processes := OrderedCollection new.
	rng := Random seed: seed.
	dailyStatsHolders := Dictionary new.
	weeklyStatsHolders := Dictionary new.
	monthlyStatsHolders := Dictionary new.