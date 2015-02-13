email
replyToEmail
  "A note that should be emailed will ask its process about the proper reply-to address."

  self flag: #'q2todo'.	"Just grabbing the first? Hmmm"
  popReceivers isEmpty
    ifFalse: [ ^ popReceivers first replyToEmail ].	"If we can't find any we use the systemEmail setting."
  ^ self model settings at: #'systemEmail' section: 'email'