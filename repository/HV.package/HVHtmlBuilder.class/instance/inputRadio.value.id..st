html-forms
inputRadio: name value: default id: id
	"Add a radio button named <name> with id <id>.
	The id should be a unique String. If the current request has
	posted this field then the value is calculated from
	there, otherwise we use the supplied Boolean <default>.
	If one of the radio buttons in the current group already is
	set then we ignore <default> and use false."

	| val radio |
	val := default.
	self ifSubmit: [
		val := (fields includesKey: name)
			ifTrue:[ (fields at: name) = id asString ]
			ifFalse: [ false ]].
	"If there was a radio button before us, make sure we only use
	true if noone has been true so far:"
	val := lastRadio ifNotNil: [lastRadio nooneSet and: [val]] ifNil: [val].
	radio := HVHtmlInputRadio name: name value: val id: id.
	radio previous: lastRadio.
	lastRadio := radio.
	^self addHtmlInput: radio