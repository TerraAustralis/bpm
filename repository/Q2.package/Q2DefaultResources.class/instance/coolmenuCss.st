accessing-styles
coolmenuCss
	"This is the style sheet for the navigation area in the left panel."
	
^ '.vertmenu {
font-family: Verdana, Arial, Helvetica, sans-serif;
font-size: 100%;
padding: 0px;
margin: 0px;
}

.vertmenu h1 {
display: block;
background-color:#024f94;
font-size: 1.2em;
padding: 3px 0 5px 3px;
border: 1px solid #000000;
color: white;
margin: 0px;
margin-top: 25px;
}

.vertmenu div a {
font-size: 100%;
overflow: hidden;
text-decoration: none;
color: black;
display: block;
border-left: 1px solid #000000;
border-right: 1px solid #000000;
border-bottom: 1px solid #000000;
padding: 3px 0 5px 2px;
margin: 0px;
background-color: #ECECEC;
}


.vertmenu div a:hover, .vertmenu div a:focus {
	text-decoration: underline;
	color: blue;
	background-color: #d8d8d8 /*  --- causes a bug in IE6 */
}

.vertmenu div #option-selected {
	background-color: #929091;
	font-weight: bold;
}


#coolmenu{
border: 1px solid black;
border-bottom-width: 0;
width: 160px;
background-color: #ECECEC; /* #E6E6E6; */
}

* html #coolmenu{ /*IE only rule, to negate the padding below IE includes in menu width.*/
width: 154px;
}

#coolmenu a{
padding: 2px;
padding-left: 4px;
display: block;
width: 100%;
color: black;
text-decoration: none;
border-bottom: 1px solid black;
}

html>body #coolmenu a{ /*Non IE rule*/
width: auto;
}

#coolmenu a:hover{
background-color: black;
color: white;
}'