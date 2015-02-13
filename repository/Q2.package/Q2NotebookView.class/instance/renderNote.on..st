note rendering
renderNote: note on: html
	"Regular note rendering."

	html div class: 'commenttop'; with: [
		html strong: note subject; break.
		html text: 'by ', note author displayString, ' on ', (self formatStamp: note created)].
	html div class: 'commentbody'; with: [
		"We do not use Swiki formatting of notes right now - >> caused headaches and it probably is not a good idea anyway"
		"html html: ((Q2WikiPage source: note description) swikifyFor: self inApplication: self application)"
		html preformatted: note description
	]