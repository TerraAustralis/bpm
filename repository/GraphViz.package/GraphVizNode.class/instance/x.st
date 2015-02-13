accessing
x

	| pos |
	pos _ self attributes at: #pos ifAbsent: [^ nil].
	^ (pos findTokens: ',') first asNumber