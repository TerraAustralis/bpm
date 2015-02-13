as yet unclassified
testOneCase

	"
self debug: #testOneCase
MagmaSession cleanUp.
Q2Session current pool deleteDatabase
Q2Session current location isRepository
" 


	^self initializeDatabaseWith: [
		| model case fv |
		self recreateSimpleDatabase.
		Q2Session sessionDo: [ :session |
			session dbSession preferencesSignalProxyMaterializations: true.
			model := session model.
			case := model processes first newCase.
			case reporter: model currentUser.
			fv := case createFormBuffer.
			fv formValues first
				commit: #subject with: testName;
				commit: #description with: 'Description of: ', testName.
			model createCase: case formValue: fv ].
			model := case := fv := nil. ];
		serializeAndVerify;
		go