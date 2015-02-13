*Q2GemStone
fromDays: dayCount 
	"Days since 1 January 1901"

	^ self julianDayNumber: dayCount +  "SqueakEpoch" 	 2415386. 		"Julian day number of 1 Jan 1901"