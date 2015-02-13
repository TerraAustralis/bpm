*Q2GemStone
julianDayNumber: aJulianDayNumber

	^ self basicNew
		ticks: aJulianDayNumber days ticks offset: self localOffset;
		yourself