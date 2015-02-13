process properties
processPropertyValues
  | values |
  values := Processor activeProcess perform: #'clientData'.
  values
    ifNil: [ 
      values := Dictionary new.
      Processor activeProcess perform: #'clientData:' with: values ].
  ^ values