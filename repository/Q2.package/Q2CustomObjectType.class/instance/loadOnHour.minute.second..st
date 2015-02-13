loading
loadOnHour: h minute: m second: s
	"Set next load explicitly. If the time is before 'Time now' then we
	schedule it for tomorrow, otherwise later today."

	| time date |
	time := Time hour: h minute: m second: s.
	time < Time now 
		ifTrue: [date := Date tomorrow] 
		ifFalse: [date := Date today].
	self loadOn: (Q2TimeStamp date: date time: time)