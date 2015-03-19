start-stop
stop
	"Stop and unregister service with name of class."

	^(ApplicationService serviceNamed: self name ifAbsent: [^self]) unregister