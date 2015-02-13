roles
ownerValues
  "Return all users available to pick as responsible."

  | result process |
  process _ self process.
  result _ process personalImportedUsers.	"NOTE: Allow Owner to be nobody? Maybe?"
  (self processSetting: #'allowSettingResponsiblityToNobody')
    ifTrue: [ result add: process nobodyUser ].
  ^ result