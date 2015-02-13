Computes statistics for a single case for the period of time specified.
For more details see class comment for  Q2StatisticsCalculator.

DTP ==> during time period specified.

instance variables:
setResponsibleTxn   			(was responsible set DTP)
wasCreated					(was case created DTP)
wasOpened					(was case opened DTP)
wasClosed					(was case closed DTP)
wasReopened				(was case created DTP)
isOpen						(was case at end of time period)
timeToOpen					(if case opened DTP then this is the time from case creation to opening)
periodOpen					(if case closed DTP then this is the time from case first opening to closing)
timeToClose					(if case closed DTP then this is the time from case creation to closing)
timeToSetResponsible			(if responsible set then this is the time from case creation to setting of responsible)
timeToResolve				(if case closed DTP then this is the time from case first opening to entering second last stage)
timeToValidateResolution		(if stage closed DTP then this is the time in the second last stage (stage before closing))