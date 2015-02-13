*Q2GemStone
_deepCopyWith: copier
  "This implementation behaves similar to Squeak veryDeepCopyWith:
	and sends #veryDeepInner: to handle class-specific deep copy of references.
	"

  | copy cls |
  copy := copier at: self otherwise: nil.
  copy ~~ nil
    ifTrue: [ ^ copy ].
  copy := self copy.
  copier at: self put: copy.
  copy veryDeepInner: copier.	"now copy instance variables, but only for classes which not have own #veryDeepInner: implementation"
  cls := copy class.
  [ cls isNil ]
    whileFalse: [ 
      (cls includesSelector: #'veryDeepInner:')
        ifFalse: [ 
          cls instVarNames
            do: [ :var | 
              | offset |
              offset := cls offsetOfInstVar: var.
              copy
                instVarAt: offset
                put: ((self instVarAt: offset) veryDeepCopyWith: copier) ] ].
      cls := cls superclass ].
  ^ copy