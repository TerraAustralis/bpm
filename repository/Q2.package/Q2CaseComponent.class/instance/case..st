accessing
case: aCase
  "A case has been selected for either editing or viewing."

  case := aCase.
  label := aCase subject , ' - ' , case processAndName.
  editor clear.
  noteview view: case.
  alarmview view: case