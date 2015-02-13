accessing
vertices

	| pos |

	pos := self attributeAt: #pos ifAbsent: [ ^ nil ].
 
	^ (pos findTokens: ' ') collect:
		[:each | | point |
		point _ each findTokens: ','.
		point first asNumber @ point second asNumber]