building Gjallar commands
buildTemps
	"build a string which contains all names as temporary variables"

	| commands |
	commands := WriteStream on: (String new: 1000).
	commands nextPutAll: '| wflow process stage '.
	
	states withIndexDo: 
			[:state :index| 
			commands
				nextPutAll: 'sta';
				nextPutAll: index printString ;
				space].
	transitions withIndexDo: 
			[:trans :index | 
			commands
				nextPutAll: 'tra';
				nextPutAll: index printString ;
				space].
	commands nextPutAll: ' |'; cr.
	^commands contents