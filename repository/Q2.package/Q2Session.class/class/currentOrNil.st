instance creation
currentOrNil
  "Return the current Q2Session or nil."

  "^WACurrentSession value ifNil: [ self plvTheSessionForThisProcess value ]"

  ^ [ WACurrentRequestContext value session ]
    on: WARequestContextNotFound
    do: [ :ex | Q2CurrentSession value ]