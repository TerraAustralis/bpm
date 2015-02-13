accessing-styles
kalseyTabsCss
	"This is from http://kalsey.com/tools/csstabs/ - would also be nice to do http://www.alistapart.com/articles/slidingdoors/"

^'.kalsey .navigation-options {
	margin : 0;
	padding-left : 10px;
	z-index: 1;
/*	position: relative;*/
}
.navigation-options table tr td, .navigation-options table {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
}
.kalsey .navigation-options div	{
	background : #E8EBF0;
	border : 1px solid #ccc;
	color : #666;
	font-size : small;
	font-weight : normal;
	line-height : 14px;
	margin-right : 8px;
	padding : 2px 10px 2px 10px
}

.kalsey .navigation-options div a:link, .kalsey .navigation-options div a:visited	{
	text-decoration : none;
	color: black;
}

.kalsey .navigation-options ul div a:hover	{
	color: blue;
	text-decoration: underline;
}

.kalsey .navigation-options .option-selected div {
	background : #fff;
	border-bottom : 1px solid #fff;
}

.kalsey .navigation-content {
/*	position: relative;*/
	top: -4px;
	z-index:0;
	background : #fff;
	border : 1px solid #ccc;
	margin : 0px;
	padding : 15px;
	clear: both;
	line-height: 1.1;  /* IE6 CSS workaround - http://www.dracos.co.uk/web/css/ie6floatbug/ */
}'