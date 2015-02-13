email
createCaseFrom: mailItem for: popReceiverOrProcess
  "We have decided to create a case from this email."

  | case |
  case := popReceiverOrProcess newCaseIn: self.
  case reporter: (self importedUserOrPersonFor: mailItem sender).
  case owner: case reporter.
  case
    subject: mailItem subject;
    description: mailItem description.
  mailItem alerted
    do: [ :each | case addAlerted: (self importedUserOrPersonFor: each) ].
  mailItem interested
    do: [ :each | case addInterested: (self importedUserOrPersonFor: each) ].
  case origin: #'email'.	"This is the final step, creating a txn etc"
  model createCase: case formValue: nil files: mailItem files.
  Q2Log debug: 'Case created from email' sender: self