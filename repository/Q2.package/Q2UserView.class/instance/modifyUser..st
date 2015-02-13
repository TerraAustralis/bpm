actions
modifyUser: aBuffer
	"The user submitted the form, if aBuffer is nil
	the form was cancelled. Create a transaction and commit it."

	aBuffer
		ifNil: [self answer: nil]
		ifNotNil: [
			self model modifyUser: aBuffer.
			self answer: aBuffer target].

	self application userSettingsModified