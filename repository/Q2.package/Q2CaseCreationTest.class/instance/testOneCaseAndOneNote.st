as yet unclassified
testOneCaseAndOneNote
	^self initializeDatabaseWith: [
		| case fv |
		self recreateSimpleDatabase.
		Q2Session sessionModelDo: [ :session :model | 
			case := model processes first newCase.
			case reporter: model currentUser.
			fv := case createFormBuffer.
			fv formValues first
				commit: #subject with: testName;
				commit: #description with: 'Description of: ', testName.
			model createCase: case formValue: fv.
			model 
				addNote: (case newNote
					author: (model processes first
						findUserOrPersonById: model currentUser id);
					description: 'blabla';
					yourself)
				toCase: case
				files: nil.
			 ].
			 case := fv := nil. ];
		serializeAndVerify;
		go