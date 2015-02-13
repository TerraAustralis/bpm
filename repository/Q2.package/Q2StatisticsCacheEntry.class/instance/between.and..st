as yet unclassified
between: aStartDate and: endDate
  "Return MagmaCollectionReader for a given range of dates (inclusive)"

  ^ statistic
    where: [ :reader | reader read: #'date' from: aStartDate to: endDate ]