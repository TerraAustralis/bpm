html-forms
select: aName objects: objects values: values size: size multiple: multi nilLabel: label selector: sel value: default
	"Selects always have values that are integers from 1.
	If there is a value submitted we find the object at that
	position, otherwise we use the supplied default value."

	| val submitted v |
	submitted := fields at: aName ifAbsent:[nil].
	submitted
		ifNotNil: [
			values
				ifNil: [
					(submitted isString not | multi)
						ifTrue:[val := OrderedCollection new.
							submitted isString ifTrue: [
								submitted := submitted findTokens: Character space].
							submitted
								do: [:subm |
									v := objects at: subm asNumber ifAbsent: [nil].
									v ifNotNil: [val add: v]]]
						ifFalse:[val := objects at: submitted asNumber ifAbsent: [nil]]]
				ifNotNil: [
					multi
						ifTrue: [submitted isString ifTrue: [
									submitted := submitted findTokens: Character space].
								val := submitted]
						ifFalse: [val := submitted].
					(val = 'nil') ifTrue:[val := nil].
					]]
		ifNil: [val := default].
	^self addHtmlInput: (HVHtmlSelect name: aName objects: objects values: values size: size multiple: multi nilLabel: label selector: sel value: val)