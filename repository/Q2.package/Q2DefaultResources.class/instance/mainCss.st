accessing-styles
mainCss
	"This includes frames emulation in CSS and the basic style of common elements."
 
^'body {
    margin: 0em;
    padding: 0em;
 
	_overflow: hidden;
	_height: 100%;
  	_width: 100%;
  	_overflow: auto;
}

body, html, td, th, textarea, input, button, label, select, option {
  font-family: Verdana, "Lucida Grande", "Bitstream Vera Sans", Tahoma, "Lucida Sans Unicode", Arial, sans-serif;
}

img {border: 0 none;}

h1 {padding-top: 0;margin-top: 0;}

.invisible {display: none;}

#left {
	top: 0;
	left: 0;
	padding: 0.5em;
	width: 175px;
	height: 100%;
	background-color: #ECECEC;
	color: black;
	border-right: 1px solid #D3D3D3;
	position: absolute;	 
}

/* body > #left {position: fixed;} */
.page-table {
}

#content {
	margin-left: 180px;
    padding: 1.0em;
    line-height: 1.5;
}

input.submit {
	font-size: 100%;
	width: 10em;
}

.ttcheader {
	width: 40em;
	padding: 0.2em;
	background-color: lightblue;
	border-top: 1px solid black;
	border-left: 1px solid black;
	border-right: 1px solid black;
}

.ttcbody {
	width: 40em;
	padding: 0.2em;
	background-color: lightblue;
	border: 1px solid black;
}

.ttheader {
	padding: 0.2em;
	background-color: #ffffe7;
	border-top: 1px solid black;
	border-left: 1px solid black;
	border-right: 1px solid black;
}

.ttbody {
	padding: 0.2em;
	background-color: #ffffe7;
	border: 1px solid black;
}

.wikiviewer {
	background-color: #f2f5fc;
	border: 1px solid black;
	margin: 0.5em;
	padding: 0.5em;
}

.wikieditor {
	background-color: #f2f5fc;
	border: 1px solid black;
	margin: 0.5em;
	padding: 0.5em;
}

.wikieditor input.submit {
	width: 5em;
}

.wikieditor textarea {
	width: 100%;
	height: 100%;
}

.pluginConfig {
	display: block;
	border:  1px solid black;
	padding: 8px;
}

'