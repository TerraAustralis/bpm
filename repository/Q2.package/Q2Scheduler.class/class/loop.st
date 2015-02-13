private
loop
  "Spawn a background process running #cycle in each service that answers true for #isPending."

  | serviceProcess n |
  Processor activeProcess environment: nil.
  [ true ]
    whileTrue: [ 
      Q2GemStonePlatform beginTransaction.
      Q2Service calculateNow.
      Services
        do: [ :each | 
          each isPending
            ifTrue: [ 
              (ServiceProcesses includesKey: each)
                ifTrue: [ 
                  "already running!"
                  Q2Log
                    notice:
                      'Service "' , each name
                        ,
                          '" not ready to run again, taking too long to finish, rescheduling.'.
                  each reschedule ]
                ifFalse: [ 
                  each isExclusive
                    ifTrue: [ 
                      "wait for all running services to finish"
                      ServiceProcesses isEmpty
                        ifFalse: [ 
                          Q2Log
                            info:
                              'Waiting 20 seconds for ' , ServiceProcesses size asString
                                ,
                                  ' services to finish before rescheduling service '
                                , each name.
                          n := 0.
                          [ ServiceProcesses isEmpty or: [ n = 20 ] ]
                            whileFalse: [ 
                              n := n + 1.
                              (Delay forSeconds: 1) wait ] ].
                      ServiceProcesses isEmpty
                        ifFalse: [ 
                          Q2Log
                            info:
                              'Window for exclusive execution ended (' , ServiceProcesses size asString
                                , ' services still running), rescheduling'
                                , each name.
                          each reschedule ]
                        ifTrue: [ 
                          Q2Log info: 'Waiting done, running exclusive service ' , each name.
                          each cycle ] ]
                    ifFalse: [ 
                      serviceProcess := [ 
                      [ each cycle ]
                        ensure: [ ServiceProcesses removeKey: each ifAbsent: [  ] ] ]
                        fixTemps;
                        forkAt: Processor systemBackgroundPriority.
                      ServiceProcesses at: each put: serviceProcess.
                      serviceProcess resume ] ] ] ].
      (Delay forSeconds: 2) wait.
      Q2Log flush.
      Q2GemStonePlatform commitTransaction ]