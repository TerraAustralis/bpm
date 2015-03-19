rendering
collapseUrl
	| str tail |
	str := parent builder url.
	tail := 'collapsetoc?entry=', entry name.
	^(str isEmpty or: [str last = $/]) ifTrue: [str, tail] ifFalse: [str, '/', tail]