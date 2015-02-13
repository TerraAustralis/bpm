rendering
renderContentOn: html 
	"This is the main entrance for Q2 and defines the main display.
	If we are not logged in we only present some statistics, a possible
	bulletin and a login dialog."
"	MessageTally spyOn: ["
	html div
		id: 'left';
		with: [ html render: left ].
	html div
		id: 'content';
		with: [ html render: content ] "] "