accessing
digestNextSend: anObject
	"digestNextSend ifNotNil: [
		Transcript show: 'Prev time: ', digestNextSend asString; cr.
		Transcript show: 'Curr time: ', PointInTime now asAbsoluteSeconds asString, ' diff: ', (PointInTime now asAbsoluteSeconds - digestNextSend)  asString; cr.
		Transcript show: 'New time: ', anObject asString, ' diff: ', (anObject - digestNextSend) asString; cr.]."
	digestNextSend := anObject