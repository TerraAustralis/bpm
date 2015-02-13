accessing
y

	| pos |
	pos _ self attributes at: #pos ifAbsent: [^ nil].
	^ (pos findTokens: ',') second asNumber