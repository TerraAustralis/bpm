This class is a reimplementation of the swikification (very similar syntax as used in the original Swiki) parser/HTML generator. It is very direct (and hackishly written) but small.

The instvar #model is used for resolving links and the model must implement #urlForLink:.

Swikification rules are:

- Headings are done with starting the line with ! (! -> h1, !! -> h2, !!! -> h3)
- An empty line ends current paragraph if a paragraph is in progress, otherwise it generates a <br />.
- Ordered lists are done using '#' and can nest.
- Unordered lists are done using '-' and can nest.
- Bold can be done using underscores: _something bold_
- Regular markup is untouched: <b>something</b> or <i>italic</i>
- Text between <html>....</thml> is totally untouched.
- A line starting with | produces a <hr>
- Links are done using *something*:
	*textOrImage|something* : Link to something but showing text or image for link (this is different from regular Swiki which uses '>'). 
- Also map:
	'**'		-> '*'
	'__'		-> '_' (unless inside a *-pair)
	'<<'		-> '&lt;'
	'>>'		-> '&gt;'
	'&&'	-> '&amp;'
- Images can be placed using *[x]animage.jpg* where x = l, r or c (left, right, center). This adds a CSS class, see #resolveLink:
- Flash animations can be embedded and given extent in pixels using: *100x250|flash.swf*.
- Also does some ASPish macro expansion using syntax <%macro%>, see #expandMacro:
