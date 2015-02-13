sample
loadTortureCases
	"Create 12000 cases."

	| fv case n |
	n := 1.
	10 timesRepeat: [self processes do: 
			[:p | 
			1 to: 200
				do: 
					[:i | 
					(i \\ 100) = 0 ifTrue: [Q2Log info: 'Creating case number ', i asString, ' in process ', p name].
					case := p newCase.
					case reporter: self currentUser.
					fv := case createFormBuffer.
					(fv formValues first)
						commit: #subject with: i asString;
						commit: #description with: ((self caseExampleText: n\\10)).
					self createCase: case formValue: fv.
					n := n+1]]]