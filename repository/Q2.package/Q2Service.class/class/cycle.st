as yet unclassified
cycle
  "Calculate when to run next and then run #do.
	Override #interval to define the amount of seconds between initiations of runs."

  | time |
  Q2Log debug: 'Running service ' , self name.
  Processor activeProcess environment: nil.
  time := [ 
  [ self do ]
    on: Error
    do: [ :ex | 
      Q2Log error: '	Uncaught exception from service: ' , ex asString.
      (RemoteDebuggerLogEntry
        error: ex asString
        continuation: (GsProcess continuationFromLevel: 2)) addToLog ] ]
    timeToRun.
  self releaseSession.
  Q2Log
    debug:
      'Finished service ' , self name , ' in ' , (time / 1000.0) asString , ' seconds'