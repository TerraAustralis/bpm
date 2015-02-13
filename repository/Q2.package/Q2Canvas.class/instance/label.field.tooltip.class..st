as yet unclassified
label: anObject field: aBlock tooltip: tooltip class: fieldClass
  "Surrounded by a div of class 'field'; render <anObject>
	within a label tag with a default style boxover tooltip.
	We allocate an id which we send into aBlock so that the
	corresponding control can use it as id."

  | labelId |
  self div
    class: (fieldClass ifNil: [ #'field' ]);
    tooltip: tooltip;
    with: [ 
          labelId := self allocateKey.
          self label
            for: labelId;
            with: [ 
                  self
                    render:
                      (anObject isString
                        ifTrue: [ anObject , ':' ]
                        ifFalse: [ anObject ]) ].
          self flush.
          self div
            class: #'control';
            with: [ 
                  aBlock numArgs = 2
                    ifTrue: [ aBlock value: self value: labelId ]
                    ifFalse: [ aBlock value: labelId ]	"self image class: 'help'; fileName: 'q2.gif'" ].
          self break	"the break can be styled as a keystone clearing previous floats" ]