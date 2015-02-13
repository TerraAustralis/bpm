magma
commit

	^ self magmaSession inTransaction ifTrue: [self magmaSession commit]