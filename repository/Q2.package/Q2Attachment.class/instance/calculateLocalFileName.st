private
calculateLocalFileName
	"If we belong to a case we need to find a unique local file name
	since there may be collisions. If the original file name already
	exists for the case, we add a number to the file name, e.g:
		dump.jpg --> dump(2).jpg"

	| no |
	localFileName := originalFileName.
	no := case numberOfAttachmentsWith: originalFileName.
	(no > 0) 
		ifTrue: [ localFileName := (Q2Platform fileDirectoryClass baseNameFor: originalFileName), 
						'(', (no+1) asString, ').',
						(Q2Platform fileDirectoryClass extensionFor: originalFileName) ]