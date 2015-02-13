private
newSectionIn: anINIFile from: aString
	| stream |
	stream _ aString readStream.
	stream upTo: $[.
	^ anINIFile section: (stream upTo: $])