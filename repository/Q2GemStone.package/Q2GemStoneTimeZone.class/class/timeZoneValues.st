methods
timeZoneValues
  "Here we just add the local time zone, until full time support is developed."

  | timeZoneStrings |
  timeZoneStrings := TimeZone availableZones.
  ^ timeZoneStrings sortBy: [ :a :b | a < b ]