email
createNoteFrom: mailItem 
	"Create a note from mailItem if we find a reference
	to a case (and possibly parent note) in the subject line.
	If this is a commit-mail we create a note.
	If a note is created we return true, otherwise false -
	then a new case should be created."

	| case note |
	Q2Note parseSubject: mailItem subject do: [:caseName :parentNumber | 
		case := self findCaseNamed: caseName.
		case ifNil: 
				[case := model findCaseNamed: caseName.
				case ifNil: 
						[Q2Log warn: 'Email referring to case which does not exist: ' , caseName 
									, ' will create new case instead.'.
						^false]
					ifNotNil: 
						[Q2Log warn: 'Email referring to case in different process than reply address refers to.'.
						^case process createNoteFrom: mailItem]].
			
		note := Q2Note fromMailItem: mailItem case: case.
		note parent: (case findNoteByNumber: parentNumber).
		self model addNote: note toCase: case files: mailItem files.
		^true].

	"Create a commit-note if we match a prefix"
	(mailItem subject beginsWith: 'Mercurial commit:') ifTrue: [
		Q2CommitNote parseBody: mailItem description do: [:attributes :caseName |
			caseName ifNil: [Q2Log warn: 'Commit email without case reference in commit comment, ignoring.'. ^false].
	
			case := self findCaseNamed: caseName.
			case ifNil: 
				[case := model findCaseNamed: caseName.
				case ifNil: 
						[Q2Log warn: 'Commit email referring to case which does not exist: ' , caseName, ' ignoring.'.
						^false]
					ifNotNil: 
						[Q2Log warn: 'Commit email referring to case in different process than receiver address refers to.'.
						^case process createNoteFrom: mailItem]].

			note := Q2CommitNote fromMailItem: mailItem attributes: attributes case: case.
			self model addNote: note toCase: case files: #().
			^true]].
	^false