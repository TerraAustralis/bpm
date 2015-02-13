as yet unclassified
for: aQ2User prefix: aString processes: aCollection

	^self new
		mirrorDefinition: (Q2PersonalMirrorDefinition 
			for: aQ2User
			prefix: aString
			processes: aCollection);
		yourself