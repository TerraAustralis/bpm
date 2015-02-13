barf6
use: entryPointName
	
	| seasideApp |

	seasideApp := 
		self gjallarEntryPoints 
			at: entryPointName
			ifAbsent: [^ self error: 'no instance of Gjallar registered under that name'].

	^ (self newWithConfigFrom: seasideApp) becomeTheSessionForTheCurrentProcess.