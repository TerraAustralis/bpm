initialize-release
initialize
  super initialize.
  fields := OrderedCollection new.
  self initializeObjects.	"0 makes sure they get loaded the first time the sync is run"
  lastLoad := 0.	"PointInTime now asAbsoluteSeconds."
  loadInterval := (self settings
    at: #'customObjectLoadInterval'
    section: 'scheduler') asInteger.
  hasNil := false