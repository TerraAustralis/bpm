as yet unclassified
clear
  "Initialize service to start on the next even minute."

  nextRun := Now + (60 - Time now seconds).
  self debugFlag: false.
  self releaseSession.
  Q2NotificationDigestService debugFlag: true.
  Q2NotificationSenderService debugFlag: true.
  Q2PopService debugFlag: true