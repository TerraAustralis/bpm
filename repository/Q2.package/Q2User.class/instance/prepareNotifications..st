events
prepareNotifications: items
  | mailsubject message body |
  items notEmpty
    ifTrue: [ 
      items size = 1
        ifTrue: [ mailsubject := items anyOne mailSubject ]
        ifFalse: [ 
          mailsubject := '[' , self class settings systemName , '] Notifications from '
            , self class settings systemName ].
      body _ String
        streamContents: [ :stream | 
          items
            do: [ :notification | 
              notification descriptionOn: stream.
              stream
                nextPutAll:
                  {(Character cr).
                  (Character lf)} ] ].
      message := WAEmailMessage
        from: self session settings systemEmail
        to: self
        subject: mailsubject.
      (items size = 1 and: [ items first isCaseEvent ])
        ifTrue: [ 
          "If it is only a single notification for a case - then we add email reference"
          message
            replyTo: items first process replyToEmail;
            body: body	"reference: items first case emailReference" ]
        ifFalse: [ message body: body ] ].
  ^ message