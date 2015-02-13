accessing-styles
basicsCss
	"This is the main style sheet for Gjallar."

^'html { min-width: 600px; }

body, div, td, th, h2, h3, h4 { /* redundant rules for bad browsers  */  
    font-family: verdana,sans-serif;
	font-size:    x-small;
	voice-family: "\"}\"";
	voice-family: inherit;
	font-size: small;
	color: #333;
}  
.clearhack { display: inline; } /*Clears Box Model Hack in IE5*/

body {
	background: #fbfbfb;
	color: #333;
	padding: 1em 20px 3em 20px;
	margin: 0;
}

a { color: #06C; }
a:hover { color: #333; }
a:active { color: #000; }

p { line-height: 140%; }

h1,h2 {
	font-family: trebuchet ms;
	font-weight: bold;
	color: #333;
}

h1 {
	font-size: 180%;
	margin: 0;
}

h1 a { text-decoration: none; color: #333; }
h1 a:hover { border-bottom: 1px dotted #666; color: #000; }

h2 {
	font-size: 140%;
	padding-bottom: 2px;
	border-bottom: 1px solid #CCC;
	margin: 0;
}

p.note {
	background: #EEE;
	padding: 4px;
	font-family: tahoma;
	font-size: 85%;
	line-height: 130%;
	margin-top: 0;
}

div.clearer {clear: both}

div.validation {
	border-style: solid;
	border-width: 2px;
	border-color: #ff3366;
	margin-top: 0.5em;
	margin-bottom: 1em;
	padding: 0.5em;
}

div.errorMessage { 
	margin-left: 15px;
	font-size: 85%;
	color: red }

.option-selected {font-weight: bold}

.edit-mode {clear: right; float: right;}'