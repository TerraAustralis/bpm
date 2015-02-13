synch
disconnect
	"Disconnect this case in order to serialize it in a create case txn."

	super disconnect.
	roles := (roles collect: [:ass | Association key: ass key id copy value: ass value id copy]) asArray.
	stage := self disconnect: stage.
	forms := forms collect: [:f | f id copy].
	reporter := self disconnect: reporter.
	source := self disconnect: source.
	responsible := self disconnect: responsible.

	"these we recreate from scratch"
	transactions := notebook := links := fieldValues := attachments := nil.