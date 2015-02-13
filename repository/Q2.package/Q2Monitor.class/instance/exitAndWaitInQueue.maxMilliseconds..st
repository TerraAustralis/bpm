private
exitAndWaitInQueue: anOrderedCollection maxMilliseconds: anIntegerOrNil
	| lock delay |
	queuesMutex 
		critical: [lock _ anOrderedCollection addLast: Q2Platform semaphoreClass new].
	self exit.
	anIntegerOrNil isNil ifTrue: [
		lock wait
	] ifFalse: [
		delay _ MonitorDelay signalLock: lock afterMSecs: anIntegerOrNil inMonitor: self queue: anOrderedCollection.
		lock wait.
		delay unschedule.
	].
	self enter.