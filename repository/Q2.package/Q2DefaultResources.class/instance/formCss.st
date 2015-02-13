accessing-styles
formCss
	"This describes the layout of fields in and outside of forms."

^'.formtable {
	border-spacing: 0px 0px;
	width: 100%;
}
.formtable .odd {
	background-color: #f0f0f0
}

/* labelcell */
.lc {
	padding: 3px;
	width: 13em;
	padding-left: 3px;
}

/* controlcell */
.cc {
	padding: 3px;
}
.control TEXTAREA {
	font-size: small
}

/* helpcell */
.hc {
	padding: 3px;
}

/* Try to get textareas to behave as good as possible.*/
.formfield textarea {
	display: block;
/*	float: left; */
	margin-bottom: 0.7em;
/*	wrap: virtual; */
	width: 100%;
	height: 100%;
}


/* A couple of classes used in field definitions to govern visual appearance. */
.txtsmall {
width: 10em;
}
.txtxsmall {
width: 5em;
}
.txtmedium {
width: 20em;
}
.txtlarge {
width: 100%;
}
.txtxlarge {
width: 100%;
}

/* A new set of similar definitions, but these are for manual fields and labels */
div.field br {
	clear: left;
}


/* Gets rid of annoying padding under img */
.helpanchor img {
	display: block;
}

div.field label {
	display: block;
	width: 30em;
	float: left;
	margin-bottom: 0.7em;
}

div.field label {
	text-align: left;
	width: 13em;
	padding-right: 1em;
}



div.fieldover label {
	text-align: left;
	float: left;
	padding-right: 1em;
}

div.fieldover .control {
	text-align: left;
	float: left;
	padding-right: 1em;
}

div.fieldover br {
	clear: left;
}


.msg {
	color: red;
}

.help {
	padding-left: 1em;
}


/* Autocompletion styles for the Scriptaculous autocomplete. */

div.autocomplete {
   position: absolute;
   background-color: white;
   border: 1px solid #888;
   margin: 0px;
   padding: 0px;
   z-index: 1000;
}
div.autocomplete ul, div.autocomplete ul li {
   list-style-type: none;
   line-height: 1.7;
   margin: 0px;
   padding: 0px;
}
div.autocomplete ul li.selected {
   background-color: #ffb;
}'