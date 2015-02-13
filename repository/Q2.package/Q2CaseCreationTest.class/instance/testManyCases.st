as yet unclassified
testManyCases
	^self initializeDatabaseWith: [
		self recreateSimpleDatabase.
		Q2Session sessionModelDo: [ :session :model |
			| casecount process case fv |
			casecount := 1.
			process := model processes first.
			1 to: casecount do: [ :each |
				case := process newCase.
				case reporter: model currentUser.
				fv := case createFormBuffer.
				fv formValues first
					commit: #subject with: testName, each asString;
					commit: #description with: 'Description of: ', testName.
				model createCase: case formValue: fv ] ] ];
		serializeAndVerify;
		go