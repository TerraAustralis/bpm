private
removeTransition: aTransition
	transitions remove: aTransition ifAbsent: [^self].
	^self process removeObjectById: aTransition