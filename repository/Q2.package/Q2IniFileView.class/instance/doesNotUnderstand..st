as yet unclassified
doesNotUnderstand: aMessage
	| argCount iniFile |

	iniFile := self settings iniFile.
	argCount := aMessage arguments size.
	argCount = 0 ifTrue: [
		^  iniFile at: aMessage selector ifAbsent: [ super doesNotUnderstand: aMessage ]
	 ].
	argCount = 1 ifTrue: [ | fldName |
		fldName := (aMessage selector allButLast) asSymbol.
		 iniFile at: fldName ifAbsent: [ ^ super doesNotUnderstand: aMessage ].
		 iniFile at: fldName put: aMessage argument.
		^ self.
	].
	^ super doesNotUnderstand: aMessage