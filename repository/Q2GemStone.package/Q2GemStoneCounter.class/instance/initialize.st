initialize-release
initialize
  super initialize.
  System persistentCounterAt: counterNumber put: 0.
  ^ self