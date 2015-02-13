as yet unclassified
do
	"This is just a an example on how to programmatically create cases/issues in Gjallar.
	It creates a single case programmatically but should serve as a basis
	for writing a real importer - just add a loop somewhere :).
	In order to test this service:

	1. Make sure you have a Process called 'Migrated'. (create one using the admin console)
	2. Activate and schedule this service to run immediately with: Q2MigrationService run"

	| process case address userOrPerson model files aFile multiFormValue wrappedPerson stage note note2 |
	"Get top model object from Magma"
	model := self refreshedSession model.

	"Get the particular Q2Process to create the new cases in, just hand coded it to find one called Migrated."
	process := model findProcessNamed: 'Migrated'.

	process ifNil: [self error: 'No process named ''Migrated'' to create cases in'].

	"Create an empty not yet committed case."
	case := process newCase.

	"First parse out a clean email address from a String."
	address := (MailAddressParser addressesIn: 'balder@valhall.org') first. "only use the first"

	"Then lookup a person or user with that email in Gjallar"
	userOrPerson := model findUserOrPersonByEmail: address.

	"Now, let's wrap the user or person for this process and set him/her as reporter.
	All persons/users are wrapped(=decorated) in order for process-local categorization to work."
	wrappedPerson := process importedUserOrPersonFor: userOrPerson.

	"And set the reporter"
	case reporter: wrappedPerson.

	"Fill in fields, we just do the basic ones here."
	multiFormValue := case createFormBuffer.
	multiFormValue formValues first  "add values to the first formValue (= the first form)"
		commit: #subject with: 'A subject in utf8';
		commit: #description with: 'A description in uf8.'.

	"Create attachments."
	files := OrderedCollection new.
	aFile := Q2File new.
	aFile fileName: 'afilename.txt'.
	aFile content: 'one line of text'.
	files add: aFile.

	"Find the stage you want, typically by name or whatever"
	stage := process workflow findStageNamed: 'Inbox'.

	"And set the stage. Doing it using 'case stage: stage' would disregard all side effects.
	Doing it this way we respect gatekeepers for getting the responsible set."
	stage addCase: case.

	"Well, might be nice. Not used anywere yet."
	case origin: #imported.

	"This is the final step creating the case, creating a txn and getting it committed"
	model createCase: case formValue: multiFormValue files: files.

	"Afterwards we can add two notes, one being the reply to the case, and the other being a reply to the first.
	For author in this example we just reuse the wrappedPerson above instead of going through that again."
	note := case newNote.
	note
		subject: 'A note on the case';
		description: 'Note text'; 
		author: wrappedPerson.
	model addNote: note toCase: case files: nil.

	"And a reply to the first one, we just reuse the wrappedPerson above instead of going through that again."
	note2 := note newNote.
	note2
		subject: 'A reply to the first note';
		description: 'Reply note text'; 
		author: wrappedPerson.
	model addNote: note2 toCase: case files: nil.

	"This is just to prevent this service from being accidentally executed twice"
	Q2Scheduler deactivateService: self