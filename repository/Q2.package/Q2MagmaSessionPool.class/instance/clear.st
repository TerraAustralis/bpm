clearup/setup
clear 
  
	self class locationPools at: factory ifPresent: [ :pool | pool disconnectAndCloseAllSessions  ].
	self class locationPools removeKey: factory ifAbsent: [].