permissions
printPermissions
	| aStream |
	aStream := WriteStream on: (String new).

	aStream nextPutAll: (self name).
	self processes do: [:proc | | levels |
		levels := Dictionary new.
		proc categories do: [:cat | | level |
			level := Array with: Q2Permission undefined with: nil.
			(self getPermissionsIn: proc) do: [:perm | | access permName |
				permName := nil.
				access := perm accessLevels at: cat ifAbsent: [permName := perm name, ' - default level'. perm defaultLevel].
				permName ifNil: [permName := perm name].
				(access > level first) ifTrue: [ level := Array with: access with: permName]
			].
			levels at: cat put: level.
		].
		aStream crtab: 1; nextPutAll: proc name.
		{Q2Permission write. Q2Permission read. Q2Permission none} do:[:perm | | coll |
			coll := SortedCollection new.
			(levels select: [:val | val first = perm]) keysAndValuesDo: [:key :val |
				coll add: (key name, ' (', val second, ')').
			].
			coll isEmptyOrNil ifFalse: [aStream crtab: 2; nextPutAll: perm name.
				coll do: [:item | aStream crtab: 3; nextPutAll: item]
			].
		]
	].		
	aStream cr; nextPut: $=; tab;nextPut: $=; tab;nextPut: $=; tab.

	self processes do: [:proc |
		aStream crtab: 1; nextPutAll: proc name.
		"Print all permissions and the level they give to their categories"
		(self getPermissionsIn: proc) do:[:perm | 
			aStream crtab:2; nextPutAll: perm name, ' ('.
			self categories do:[:cat | (perm categories includes: cat) ifTrue: [
				aStream nextPutAll: cat name.
			]].
			aStream nextPutAll: ')'.

			{Q2Permission write. Q2Permission read. Q2Permission none} do: [:Q2level |
				(perm accessLevels select: [:v | v = Q2level]) ifNotEmpty: [
				aStream crtab: 3; nextPutAll: Q2level, ': '.
				perm accessLevels keysAndValuesDo: [:class :level | (level == Q2level) ifTrue: [aStream nextPutAll: '"', class name, '" ']]]].
			aStream crtab: 3; nextPutAll: 'Default: ', perm defaultLevel.
		].
	].
	aStream cr; nextPut: $=; tab;nextPut: $=; tab;nextPut: $=; tab; nextPut: $=; tab;nextPut: $=; tab;nextPut: $=; tab.
	^aStream contents