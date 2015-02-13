rendering
tooltipOn: html
	"Build and return a tooltip for this case."	

	^ html tooltip cssbody: #ttcbody; cssheader: #ttcheader;
		header: self subject , '&nbsp;&nbsp;&nbsp;', self statusAndStageInBold;
		body: (self description truncateWithElipsisTo: 1000) withLineBreaks