rendering
expandUrl
	| str tail |
	str := parent builder url.
	tail := 'expandtoc?entry=', entry name.
	^(str isEmpty or: [str last = $/]) ifTrue: [str, tail] ifFalse: [str, '/', tail]