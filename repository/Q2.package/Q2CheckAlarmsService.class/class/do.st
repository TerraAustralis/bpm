as yet unclassified
do
  "self do"

  | alarms reader todayStart todayEnd |
  todayStart := 0.
  todayEnd := (Date fromString: '05.05.2029') asSeconds.
  alarms := self session model getMagmaCollectionAlarms.
  alarms ifNil: [ ^ self ].
  reader := alarms
    where: [ :alarm | alarm alarmSeconds from: todayStart to: todayEnd ].
  reader
    do: [ :beepingAlarm | 
      Q2MailSender
        mailFrom: (Q2Object settings at: #'systemEmail' section: #'email')
        to: {'jupiter@ta-nation.local'}
        text: beepingAlarm subject.
      Transcript show: 'Sent mail to jupiter' ]