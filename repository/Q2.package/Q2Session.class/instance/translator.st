translation
translator
	"I give back the current translator. If it's not yet initialized I get it from the localeId"
	^translator ifNil: [translator := self localeID translator]