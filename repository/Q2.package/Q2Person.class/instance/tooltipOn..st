rendering
tooltipOn: html
	"Build and return a tooltip."	

	^ html tooltip cssbody: #ttcbody; cssheader: #ttcheader;
		header: self fullName;
		body: self data withLineBreaks