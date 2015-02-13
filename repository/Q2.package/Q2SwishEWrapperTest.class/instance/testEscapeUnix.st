tests
testEscapeUnix

	self shouldnt: (Q2Platform fileDirectoryClass default fileExists: 'hacked.txt').
	self index: 'foo' with: 'bar'.
	self search: '''; touch hacked.txt; echo ''' shouldFind: {}.
	self shouldnt: (Q2Platform fileDirectoryClass default fileExists: 'hacked.txt')