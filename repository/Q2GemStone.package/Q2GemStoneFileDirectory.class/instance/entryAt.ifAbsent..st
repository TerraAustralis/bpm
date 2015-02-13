methods
entryAt: name ifAbsent: aBlock

	^ self entries detect: [:entry | entry name = name ] ifNone: [aBlock value]