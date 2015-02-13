render
tooltipOn: html
	"Build and return a tooltip."	

	^ html tooltip cssbody: #ttcbody; cssheader: #ttcheader;
		header: self fullName , '&nbsp;&nbsp;(', self name, ')';
		body: self data withLineBreaks