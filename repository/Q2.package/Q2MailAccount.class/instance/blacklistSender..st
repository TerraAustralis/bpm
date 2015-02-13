accessing
blacklistSender: aString
	blacklistedSenders ifNil: [blacklistedSenders := Set new].
	blacklistedSenders add: aString