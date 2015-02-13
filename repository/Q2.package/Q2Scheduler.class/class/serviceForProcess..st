services
serviceForProcess: aProcess

	^ServiceProcesses keyAtValue: aProcess ifAbsent: [nil]