note rendering
renderCommitNote: note on: html
	"A commit note rendering."

	html div class: 'commenttop'; with: [
		html strong: 'Mercurial commit: '.
		html anchor url: 'http://mimer.gjallar.se/hg/gjhook/rev/', ((note attributeAt: #changeset) upTo: $:); with: (note attributeAt: #changeset).
		html break; text: 'by ', note author displayString, ' on ', (self formatStamp: note created), ' (committed ', (note attributeAt: #date), ')'].
	html div class: 'commentbody'; with: [
		"We do not use Swiki formatting of notes right now - >> caused headaches and it probably is not a good idea anyway"
		"html html: ((Q2WikiPage source: note description) swikifyFor: self inApplication: self application)"
		html preformatted: (note attributeAt: #description) 
	]