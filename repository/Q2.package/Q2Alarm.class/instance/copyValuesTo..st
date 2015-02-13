as yet unclassified
copyValuesTo: anotherAlarm
	"Copy the values of this alarm"

	anotherAlarm case: self case.
	anotherAlarm date: self date.
	self enabled ifTrue:[anotherAlarm enable]
				 ifFalse:[anotherAlarm disable].
	anotherAlarm subject: self subject.
	anotherAlarm repeat: self repeat.