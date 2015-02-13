private
inRe: aSubject
	"Only add re: if not already there."

	(aSubject asLowercase beginsWith: 're:') ifFalse: [^'Re: ', aSubject].
	^aSubject