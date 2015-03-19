html-forms
inputRadioValue: default
	"Add a radio button, name is picked from previous
	radio button unless it has been explicitly closed with #endRadio.
	In that case we generate a new name. Default value is <default>."

	| name id |
	(lastRadio isNil or: [lastRadio isClosed])
		ifTrue: [name := self nextVarName. id := 1]
		ifFalse: [name := lastRadio name. id := lastRadio id + 1].
	^self inputRadio: name value: default id: id