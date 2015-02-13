rendering
renderDefinitionOn: html 

	html heading level3; with: 'Code'.
	html form: [
		html textArea columns: 80; rows: 20; value: self definition; callback: [:val | self definition: val].
		html break.
		html submitButton text: 'Run'; callback: [self save].
		html submitButton text: 'Cancel'; callback: [self cancel].
		html break style: 'clear: left;'].

	html heading level3; with: 'Result'.
	html preformatted: result asString.

	error ifNotNil: [
		html heading level3; with: 'Aborted with error'.
		html preformatted: error asString]