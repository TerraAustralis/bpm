initialize-release
children
	^ editor ifNotNil: [ super children add: editor; yourself ]
		ifNil: [ super children ]