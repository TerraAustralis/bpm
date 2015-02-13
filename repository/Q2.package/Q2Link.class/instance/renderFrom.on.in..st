rendering
renderFrom: aCase on: html in: aComponent
	
	| targetCase |
	html text: (self labelFrom: aCase); space.
	targetCase := aCase == to ifTrue: [from] ifFalse: [to].
	html anchor
		tooltip: (targetCase tooltipOn: html);
		callback: [aComponent application viewCase: targetCase];
		with: (targetCase processAndNameFrom: aCase process).
	html space; html: targetCase statusAndStage