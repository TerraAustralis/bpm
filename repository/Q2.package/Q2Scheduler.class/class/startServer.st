control
startServer
  (GemServerRegistry gemServerNamed: self schedulerName)
    ifNotNil: [ :gemServer | gemServer startGems ]