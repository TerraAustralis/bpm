services
updateCustomObjectsFake
	"Used to stress test Q2Scheduler a bit when debugging sessions."

	10 atRandom timesRepeat: [Q2Session current commit: [(Delay forSeconds: 5 atRandom) wait]]