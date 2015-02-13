settings with defaults
inifileSeconds

	^ (self at: #inifileSeconds section: #globals ifAbsent: [ 600 ]) asNumber