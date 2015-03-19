rendering
fullName
	| base full |
	base := self baseUrl.
	full := entry fullName.
	^(base isEmpty not and: [base last = $/]) ifTrue: [base, full] ifFalse: [base, '/', full]