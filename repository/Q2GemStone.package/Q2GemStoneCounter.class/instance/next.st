counting
next
  "System beginTransaction.
	(UserGlobals at: #MyCounter)  incrementBy: 1.
	System commitTransaction."

  System persistentCounterAt: counterNumber incrementBy: 1.
  ^ self value