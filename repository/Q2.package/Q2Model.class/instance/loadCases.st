sample
loadCases
	"Create 3 cases in each process and handle some emails
	to create 3 more cases and add 3 notes."

	| fv anEmailTest case n proc |
	n := 1.
	self processes do: 
			[:p | 
			1 to: 3
				do: 
					[:i | 
					case := p newCase.
					case reporter: self currentUser.
					fv := case createFormBuffer.
					(fv formValues first)
						commit: #subject with: i asString;
						commit: #description with: ((self caseExampleText: n\\10)).
					self createCase: case formValue: fv.
					n := n+1]].
	anEmailTest := Q2EmailTests new.
	proc := self findProcessNamed: 'Support'.

	(Q2MailAccount new)
		"handleRawMailItem: anEmailTest firstCaseEmail in: proc;"
		handleRawMailItem: anEmailTest firstCaseEmail in: proc;
		handleRawMailItem: anEmailTest secondCaseEmail in: proc;
		handleRawMailItem: anEmailTest thirdCaseEmail in: proc;
		handleRawMailItem: anEmailTest firstNoteEmail in: proc;
		handleRawMailItem: anEmailTest secondNoteEmail in: proc;
		handleRawMailItem: anEmailTest thirdNoteEmail in: proc.