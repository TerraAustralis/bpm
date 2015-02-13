accessing-styles
notesCss
	"This is the style for notes."

^'.commenttop .details {font-size: 75.5%; margin: 0; padding: 0;}
.commenttop .details small {font-size: 100%;}

.commenttop
{
	background: #ddd;
	border: 1px solid #ccc;
	padding: .3em;
}

.commentsub
{
	background: #eee;
	padding: .3em;
	font-size: 80%;
	border: 1px solid #ddd;
	margin: 0;
}

.commenttop H4 { display: inline; }

.commentbody
{
	border: 1px solid #ddd;
	border-bottom: none;
	padding: .3em;
}

#commentlisting {
        padding: 0px;
        margin: 0px;
        list-style: none;
}
.comment { margin-bottom: 0.5em }
#commentlisting li.comment { list-style: none; }

.comment > .hidden  { display: none   }
.comment > .full    { display: inline }
.comment > .oneline { display: inline }
.comment > .oneline .details, .comment > .oneline .commentBody, .comment > .oneline .commentSub {
	display: none;
}
'