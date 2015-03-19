deprecated
endhtml: aRequest
	"Standard end. Attach a link to the source of the page."

	| url slash |
	self deprecated: 'Deprecated, use the HVHtmlBuilder to build HTML instead.'.
	slash := aRequest url findLast: [:c | c = $/ ].
	url := (aRequest url copyFrom: 1 to: slash), 'src', (aRequest url copyFrom: slash + 1 to: aRequest url size).
^'<hr><br><font size=-1>', (self link: url text: 'See source for this page'), '</font></body></html>'